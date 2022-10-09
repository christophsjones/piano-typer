package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.group.FlxSpriteGroup;
import flixel.system.FlxAssets.FlxSoundAsset;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import openfl.events.KeyboardEvent;

using Lambda;

inline var SLOW_MODE_MULTIPLIER = 0.8;
inline var SCOREX = 50;
inline var SCOREY = 180;
inline var PLAYABLEWIDTH = 500;
inline var LEFTMARGIN = 25;
inline var RIGHTMARGIN = 10;
inline var SCOREWIDTH = LEFTMARGIN + PLAYABLEWIDTH + RIGHTMARGIN;
inline var LINESPACING = 120;
inline var STAFFSPACING = 7;
inline var MAXLINES = 3;
inline var OKFRAMES = 150; // should be less than the length of a sixteenth note, i.e. OKFRAMES = 90 then BPM < 300 plz
inline var PERFECTFRAMES = 50;
inline var FONTSIZE = 15;
inline var NOTEWIDTH = 11; // how wide is a quarter note, should match note4.png
// Health constants
inline var MAX_HEALTH = 100;
inline var START_HEALTH = MAX_HEALTH;
inline var OK_HIT_HEALTH_BOOST = 0;
inline var PERFECT_HIT_HEALTH_BOOST = 3;
inline var EXTRA_NOTE_PENALTY = 5;
inline var MISSED_NOTE_PENALTY = 12;
inline var MISSED_CHORD_PENALTY = MISSED_NOTE_PENALTY * 2;
inline var WRONG_NOTE_PENALTY = 3;

enum RunState
{
	Loading;
	Playing;
	Ending;
}

class PlayState extends FlxState
{
	public static var song:Song;
	public static var soundfile:FlxSoundAsset;

	public static var isPractice:Bool = false;
	public static var isSlowMode:Bool = false;
	public static var layout:String = "QWERTY";
	public static var calibration:Int = 0;

	private var conductor:Conductor;
	private var currentTime:Float;
	private var lineLengths:Array<Float> = []; // in milliseconds

	private var health:Int = START_HEALTH;

	private var bar:BarSprite;
	private var notes:Array<NoteSprite> = []; // not broken up by line
	private var noteIndex:Int = 0;
	private var allScrolling:FlxTypedSpriteGroup<FlxSprite> = new FlxTypedSpriteGroup<FlxSprite>();

	// TODO implement this? Actually maybe holding notes is not a fun or intuitive feature
	private var activeHeldNotes:FlxTypedSpriteGroup<NoteSprite> = new FlxTypedSpriteGroup<NoteSprite>();

	private var finishingLine:Bool = false;
	private var runState:RunState = Loading;
	private var restart:Bool = false;

	private var bg:FlxSprite;

	override public function create()
	{
		bgColor = FlxColor.WHITE;
		super.create();

		bg = new FlxSprite().loadGraphic(AssetPaths.playBG__png);
		bg.alpha = 0.6;
		add(bg);


		// Initialize song
		var bpm = isSlowMode ? song.bpm * SLOW_MODE_MULTIPLIER : song.bpm;
		conductor = new Conductor(bpm);
		currentTime = -1 * getStartDelay();

		// Initialize recording data
		GameOverState.okHits = 0;
		GameOverState.perfectHits = 0;
		GameOverState.misses = 0;
		GameOverState.victory = false;
		GameOverState.showRewards = !(isPractice || isSlowMode);

		// If in practice mode, add a label to the top left
		if (isPractice || isSlowMode)
		{
			var text = isPractice && isSlowMode
				? "No-fail mode and slow mode enabled"
				: (isPractice
					? "No-fail mode enabled"
					: "Slow mode enabled");
			var title = new FlxText(10, 10, 0, text, 20);
			title.color = FlxColor.BLUE;
			add(title);
		}

		// Create title
		var t = new FlxText(SCOREX + SCOREWIDTH / 2, SCOREY - 80, 0, song.name, 40);
		t.x -= t.width / 2;
		t.color = FlxColor.BLACK;
		allScrolling.add(t);

		// Compute note times from song data
		// and add note sprites
		// TODO don't create all the note sprites at song start, it's slow
		var t = 0.0;
		var lineCt = 0;
		for (line in song.data)
		{
			// compute number of sixteenth notes in line
			// using a hack for the measurelength
			var lineLength = 0;
			for (measure in line)
			{
				var measLen = 16;
				for (n in measure)
				{
					if (n.measureLength != null)
						measLen = n.measureLength;
				}
				lineLength += measLen;
			}
			lineLengths.push(conductor.beatLen * lineLength / 4);

			var measCt = 0;
			for (measure in line)
			{
				var prevPos = null;
				var posCount = 0;
				for (n in measure)
				{
					if (n.measureLength != null)
						continue;

					if (prevPos != n.position)
					{
						posCount = 0;
						prevPos = n.position;
					}
					posCount++;

					// this breaks if one of the non-final measures has length != 16
					var linePosition = 16 * measCt + n.position;
					var noteX = SCOREX + LEFTMARGIN + PLAYABLEWIDTH * linePosition / lineLength;
					var whichSpace = switch (posCount)
					{
						case 1: 1;
						case 2: 2;
						case 3: 0;
						case 4: 3;
						default: posCount - 1;
					};
					var noteY = SCOREY + LINESPACING * lineCt - whichSpace * STAFFSPACING - 0.7;

					var noteTime = t + linePosition * conductor.beatLen / 4;

					var ns = new NoteSprite(n, noteX, noteY, noteTime);
					ns.x -= NOTEWIDTH / 2;
					notes.push(ns);

					if (!n.isRest)
					{
						var remapLetter = Note.getLetter(ns.note, layout);
						var ts = new FlxText(noteX, SCOREY + LINESPACING * lineCt + 4 * STAFFSPACING + 3 + FONTSIZE * (posCount - 1), 0, remapLetter,
							FONTSIZE);
						ts.setFormat(AssetPaths.RobotoSlab_Regular__ttf, FONTSIZE, FlxColor.BLACK);
						ts.x -= ts.width / 2;
						allScrolling.add(ts);
					}
				}
				measCt++;
			}
			t += conductor.beatLen * lineLength / 4;
			lineCt++;
		}

		// Add sprites for background content
		for (i in 0...lineCt)
		{
			// TODO when measures have unequal lengths, bar lines should not be equally spaced

			// pass in the last note of the first bar to nudge middle bar line slightly left
			var firstBar = song.data[i][0];
			var firstBarLastNote = firstBar[firstBar.length-1];
			var firstBarLastNotePosition = firstBarLastNote != null ? firstBarLastNote.position : 15;
			var ss = new StaffSprite(SCOREX, SCOREX + SCOREWIDTH, SCOREY + i * LINESPACING, song.data[i].length, firstBarLastNotePosition);
			allScrolling.add(ss);
		}

		// Add notes after background so that they're on top
		for (n in notes)
		{
			allScrolling.add(n);
		}

		bar = new BarSprite(SCOREX + LEFTMARGIN, SCOREY, health);
		add(bar);

		// Add event listeners
		FlxG.stage.addEventListener(KeyboardEvent.KEY_DOWN, processKey);

		// loading animation
		allScrolling.alpha = 0;
		var LOADING_OFFSETY = 100;
		allScrolling.forEach(function(t) {
			t.y += LOADING_OFFSETY;
		});
		add(allScrolling);

		allScrolling.forEach((t) -> FlxTween.tween(t, {
			alpha: t.y < LOADING_OFFSETY + SCOREY + LINESPACING * MAXLINES - 4 * STAFFSPACING - 1 ? 1 : 0, y: t.y - LOADING_OFFSETY}, 0.7, {
			ease: FlxEase.circOut
		}));

		// hack to wait 0.7 seconds (same as the loading animation duration)
		FlxTween.tween(new FlxSprite(), {x:0}, 0.7, {onComplete:function(t:FlxTween)
		{
			// Start the run!
			FlxG.sound.playMusic(soundfile, 1, false);

			runState = Playing;
		}});

		// Back text
		var back = new FlxSpriteGroup();
		var backImg = new FlxSprite(419.7, 495.82).loadGraphic(AssetPaths.escKey__png);
		back.add(backImg);
		var backText = new FlxText(487, 588, 0, "Quit", 20);
		backText.setFormat(AssetPaths.Boogaloo_Regular__ttf, 20, FlxColor.fromString("#1E489B"));
		backText.x -= backText.width / 2;
		back.add(backText);

		back.alpha = 0;
		add(back);
		FlxTween.tween(back, {alpha: 1}, 0.7).then(FlxTween.tween(back, {alpha: 0}, 0.5, {startDelay: 5}));


		#if FLX_MOUSE
		FlxG.mouse.visible = false;
		#end
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		// TODO allow restart flag during the transition to the gameover screen
		// if (runState == Ending && FlxG.keys.justPressed.R)
		// 	restart = true;

		if (runState != Playing)
			return;

		if (FlxG.keys.justPressed.ESCAPE)
			// return endSong(new MenuState());
			return endSong(new GameOverState());

		// // Debug
		// if (FlxG.keys.justPressed.D)
		// 	trace(FlxG.sound.music);

		resync();

		// if past the last eighth note in the line, animate
		if (!finishingLine && currentTime - conductor.elapsedTime > lineLengths[conductor.songPos] - conductor.beatLen / 2 + OKFRAMES)
		{
			nextLine();
			finishingLine = true;
		}

		// if past the end of the line, move the currentTime bar back to the left
		if (currentTime - conductor.elapsedTime > lineLengths[conductor.songPos])
		{
			conductor.nextLine(lineLengths[conductor.songPos]);
			finishingLine = false;
		}

		// Is the song over?
		if (conductor.songPos == song.data.length)
		{
			GameOverState.victory = true;
			return endSong(new GameOverState());
		}

		if (!isPractice && health <= 0)
		{
			GameOverState.victory = false;
			return endSong(new GameOverState());
		}

		updatePosition();
		updateBackground();
	}

	private function endSong(target:FlxState):Void
	{
		runState = Ending;

		GameOverState.completion = Math.max(0, currentTime / FlxG.sound.music.length);

		FlxG.sound.music.fadeOut(0.3);

		// Remove event listeners
		FlxG.stage.removeEventListener(KeyboardEvent.KEY_DOWN, processKey);

		FlxG.camera.fade(FlxColor.WHITE, 0.33, false, function()
		{
			if (restart)
				FlxG.switchState(new PlayState());
			else
				FlxG.switchState(target);
		});
	}

	private function updatePosition():Void
	{
		if (currentTime < 0)
			return;

		bar.x = SCOREX + LEFTMARGIN + PLAYABLEWIDTH * (currentTime - conductor.elapsedTime) / lineLengths[conductor.songPos];
		bar.health = health;

		var numMissed = 0;
		while (noteIndex < notes.length && currentTime > notes[noteIndex].time + OKFRAMES)
		{
			var cN = notes[noteIndex];
			if (!cN.note.isRest && !cN.hit)
			{
				// Missed a note, color it red
				cN.color = NoteSprite.colors["miss"];
				numMissed++;
			}
			noteIndex++;
		}
		if (numMissed > 1) {
			health -= MISSED_CHORD_PENALTY;
		} else if (numMissed > 0) {
			health -= MISSED_NOTE_PENALTY;
		}
		if (health < 0)
			health = 0;
		GameOverState.misses += numMissed;
	}

	// color the background based on health
	private function updateBackground():Void
	{
		// 0 ---- 0.5 ---- 1    actual health
		// 0 ---- 1             range to color value (start making bg red at 0.5)
		// red -- white

		if (isPractice)
			return;

		var healthPercent = Math.max(0.0, Math.min(1.0, 2 * health / MAX_HEALTH));
		var colorBad = "#ab5c5c"; // val at 0
		var healthColor = FlxColor.interpolate(FlxColor.fromString(colorBad), FlxColor.WHITE, healthPercent);
		bgColor = healthColor;
	}

	private function animateUp(s:FlxSprite)
	{
		// TODO fix multiple letters below staff
		var fadeout = s.y < SCOREY + LINESPACING - 4 * STAFFSPACING - 1 ? 0 : 1;
		var fadein = s.y < SCOREY + LINESPACING * (MAXLINES + 1) - 4 * STAFFSPACING - 1 ? 1 : 0; 
		FlxTween.tween(s, {alpha: Math.min(fadeout, fadein), y: s.y - LINESPACING}, (conductor.beatLen / 2 + OKFRAMES) / 1000 - 0.01, {ease: FlxEase.circOut});

		return true;
	}

	private function nextLine():Void
	{
		allScrolling.forEach(animateUp);
	}

	private function resync():Void
	{
		FlxG.sound.music.play();
		currentTime = FlxG.sound.music.time - getStartDelay();
		// TODO this could do something really weird if the song restarted for some reason
		// also FYI the song restarts if you click away then click back, no idea why
	}

	private inline function isValidPress(e:KeyboardEvent)
	{
		// prevent key hold autorepeat
		if (!FlxG.keys.anyJustPressed([e.keyCode]))
			return false;

		// remap keys allow , . ; '
		if (e.keyCode == 186 || e.keyCode == 188 || e.keyCode == 190 || e.keyCode == 222)
			return true;

		// lowercase a-z
		return 65 <= e.keyCode && e.keyCode <= 90;
	}

	public function processKey(e:KeyboardEvent)
	{
		// with keymaps there are other legal keys like ,.
		if (isValidPress(e))
		{
			var hitAnything = false;
			var notePresent = false;

			var i = noteIndex;
			while (i < notes.length && currentTime > notes[i].time - OKFRAMES)
			{
				if (notes[i].note.isRest)
				{
					i++;
					continue;
				}

				notePresent = true;
				var remapLetter = Note.getLetter(notes[i].note, layout);
				// trace(FlxG.keys.anyJustPressed([e.keyCode]));
				// trace("e: " + e.keyCode + ", " + e.charCode);
				// trace("remapLetter: " + remapLetter + remapLetter.charCodeAt(0));
				if (!notes[i].hit && remapLetter.toLowerCase().charCodeAt(0) == e.charCode)
				{
					notes[i].hit = true;
					hitAnything = true;

					// var textResponse; // TODO try out adding a text response and see if it looks good
					if (currentTime < notes[i].time - PERFECTFRAMES)
					{
						// early
						notes[i].color = NoteSprite.colors["early"];
						GameOverState.okHits++;
						health += OK_HIT_HEALTH_BOOST;
					}
					else if (currentTime < notes[i].time + PERFECTFRAMES)
					{
						// perfect!
						notes[i].color = NoteSprite.colors["perfect"];
						GameOverState.perfectHits++;
						health += PERFECT_HIT_HEALTH_BOOST;
					}
					else
					{
						// late
						notes[i].color = NoteSprite.colors["late"];
						GameOverState.okHits++;
						health += OK_HIT_HEALTH_BOOST;
					}

					if (health > MAX_HEALTH)
						health = MAX_HEALTH;
				}

				i++;
				// only hit one note with this letter
				if (hitAnything)
					break;
			}

			if (!hitAnything)
			{
				// It felt weird to count wrong notes as misses
				// GameOverState.misses++;
				health -= notePresent ? WRONG_NOTE_PENALTY : EXTRA_NOTE_PENALTY;
			}
		}

		return;
	}

	private function getStartDelay() {
		return isSlowMode ? (song.startDelay - calibration) / SLOW_MODE_MULTIPLIER : song.startDelay - calibration;
	}
}
