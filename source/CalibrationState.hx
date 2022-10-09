package;

import Note;
import PlayState.LEFTMARGIN;
import PlayState.LINESPACING;
import PlayState.MAXLINES;
import PlayState.MAX_HEALTH;
import PlayState.OKFRAMES;
import PlayState.PLAYABLEWIDTH;
import PlayState.SCOREWIDTH;
import PlayState.SCOREX;
import PlayState.SCOREY;
import PlayState.STAFFSPACING;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxSave;

inline var BPM = 100;
inline var MSPERBEAT = 1000 * 60 / BPM;
var INSTRUCTION_1 = "Press left and right to adjust audio/visual sync.";
inline var INCR = 20;

class CalibrationState extends FlxState
{
	private var currentTime:Float = 0;
	private var trueTime:Float = 0;
	private var prevMet:Float = -MSPERBEAT - 1;

	private var bar:BarSprite;
	private var notes:Array<NoteSprite> = []; // not broken up by line
	private var noteIndex:Int = 0;
	private var allScrolling:FlxTypedSpriteGroup<FlxSprite> = new FlxTypedSpriteGroup<FlxSprite>();

	private var calibrationText:FlxText;

	private var finishingLine:Bool = false;
	private var ending:Bool = false;

	public static var _saveState = new FlxSave();

	private var metronome:FlxSound;

	override public function create()
	{
		bgColor = FlxColor.WHITE;
		metronome = FlxG.sound.load(AssetPaths.metronome__wav);

		super.create();
		currentTime = PlayState.calibration;

		// noteTimes: 0, t, 2t, 3t, 4t, 5t, 6t, 7t, 0, t, 2t, ...
		// where t is the length of a quarter note
		for (i in 0...8 * (MAXLINES + 1))
		{
			var n = {length: Quarter, letter: '', position: 4 * (i % 4)};

			var linePosition = 4 * (i % 8);
			var noteX = SCOREX + LEFTMARGIN + PLAYABLEWIDTH * linePosition / 32;

			var lineCt = Math.floor(i / 8);
			var noteY = SCOREY + LINESPACING * lineCt - STAFFSPACING - 0.7;
			var noteTime = (i % 8) * MSPERBEAT;
			var ns = new NoteSprite(n, noteX, noteY, noteTime);
			// if (i >= 8 * MAXLINES)
			// ns.alpha = 0;
			notes.push(ns);
		}

		calibrationText = new FlxText(0, 0, 0, Std.string(PlayState.calibration) + " ms", 45);
		calibrationText.screenCenter();
		calibrationText.color = FlxColor.fromString("#333333");
		calibrationText.y = FlxG.height - 150;
		add(calibrationText);

		// Add instructions
		var t = new FlxText(SCOREX + SCOREWIDTH / 2, SCOREY - 80, 0, INSTRUCTION_1, 24);
		t.x -= t.width / 2;
		t.color = FlxColor.fromString("#333333");
		add(t);

		// Add sprites for background content
		for (i in 0...(MAXLINES + 1))
		{
			var ss = new StaffSprite(SCOREX, SCOREX + SCOREWIDTH, SCOREY + i * LINESPACING, 2, 13);
			// if (i >= MAXLINES)
			// 	ss.alpha = 0;
			allScrolling.add(ss);
		}

		// Add notes after background so that they're on top
		for (n in notes)
		{
			allScrolling.add(n);
		}
		allScrolling.forEach(function (t){
			t.alpha = t.y < SCOREY + LINESPACING * MAXLINES - 4 * STAFFSPACING - 1 ? 1 : 0;
		});

		bar = new BarSprite(SCOREX + LEFTMARGIN, SCOREY, MAX_HEALTH);
		add(allScrolling);
		add(bar);

		// Back text
		var back = new FlxSprite(419.7, 495.82).loadGraphic(AssetPaths.escKey__png);
		add(back);
		var backText = new FlxText(432, 588, 0, "Return to menu", 20);
		backText.setFormat(AssetPaths.Boogaloo_Regular__ttf, 20, FlxColor.fromString("#1E489B"));
		add(backText);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (ending)
			return;

		if (FlxG.keys.justPressed.ESCAPE)
		{
			ending = true;
			_saveState.data.calibration = PlayState.calibration;
			_saveState.flush();

			FlxG.camera.fade(FlxColor.WHITE, 0.33, false, function()
			{
				FlxG.switchState(new OptionsMenuState());
			});
		}

		if (FlxG.keys.justPressed.LEFT)
		{
			PlayState.calibration -= INCR;
			currentTime -= INCR;
			calibrationText.text = Std.string(PlayState.calibration) + " ms";
		}
		if (FlxG.keys.justPressed.RIGHT)
		{
			PlayState.calibration += INCR;
			currentTime += INCR;
			calibrationText.text = Std.string(PlayState.calibration) + " ms";
		}

		currentTime += FlxG.elapsed * 1000;
		trueTime += FlxG.elapsed * 1000;

		// if past the last eighth note in the line, animate
		if (!finishingLine && currentTime > 8 * MSPERBEAT - MSPERBEAT / 2 + OKFRAMES)
		{
			nextLine();
			finishingLine = true;
		}

		// if past the end of the line, move the currentTime bar back to the left
		if (currentTime >= 8 * MSPERBEAT)
		{
			finishingLine = false;
			currentTime -= 8 * MSPERBEAT;
		}

		if (trueTime - prevMet >= MSPERBEAT)
		{
			metronome.play(true);
			prevMet += MSPERBEAT;
			if (trueTime >= 8*MSPERBEAT){
				trueTime -= 8*MSPERBEAT;
				prevMet = 0;
			}
		}

		updatePosition();
	}

	private function updatePosition():Void
	{
		// if (currentTime < 0)
		// 	return;

		bar.x = SCOREX + LEFTMARGIN + PLAYABLEWIDTH * currentTime / (8 * MSPERBEAT);

		while (currentTime >= notes[noteIndex].time && currentTime <= notes[noteIndex].time + OKFRAMES)
		{
			var cN = notes[noteIndex];
			cN.color = NoteSprite.colors["perfect"];

			noteIndex++;
			noteIndex %= notes.length;
		}
	}

	private function animateUp(s:FlxSprite)
	{
		var fadeout = s.y < SCOREY + LINESPACING - 4 * STAFFSPACING - 1 ? 0 : 1;
		var fadein = s.y < SCOREY + LINESPACING * (MAXLINES + 1) - 4 * STAFFSPACING - 1 ? 1 : 0; //dunno why this works
		FlxTween.tween(s, {alpha: Math.min(fadeout, fadein), y: s.y - LINESPACING}, (MSPERBEAT / 2 + OKFRAMES) / 1000 - 0.01, {
			ease: FlxEase.circOut,
			onComplete: (t) ->
			{
				if (s.y < SCOREY - 4 * STAFFSPACING - 1)
				{
					s.y += LINESPACING * (MAXLINES + 1);
					s.color = FlxColor.BLACK;
				}
			}
		});

		return true;
	}

	private function nextLine():Void
	{
		allScrolling.forEach(animateUp);
	}	
}
