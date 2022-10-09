package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxUIAssets;
import flixel.addons.ui.FlxUIButton;
import flixel.addons.ui.FlxUICheckBox;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxSave;

// TODO keyboard menu navigation
// also add "<img of UpKey>/<img of DownKey> Navigate     <img of Enter> Select" to bottom of main menu
class MenuState extends FlxState
{
	var songButtons:Array<FlxUIButton> = [];
	var layoutButtons:Map<String, FlxUICheckBox> = [];

	public static var _saveState = new FlxSave();

	override public function create()
	{
		bgColor = FlxColor.WHITE;
		super.create();
		add(new FlxSprite().loadGraphic(AssetPaths.mainMenuBG__png));

		var i = 0;
		for (s in SongData.songList)
		{
			var playButton = new FlxUIButton(0, 0, s.name + "\nArtist: " + s.artist, () -> clickPlay(s.fname));
			playButton.loadGraphic(AssetPaths.menuButton__png, true, 333, 102);
			playButton.scale.set(0.9, 1);
			playButton.updateHitbox();
			playButton.label.fieldWidth = playButton.width;
			playButton.label.setFormat(AssetPaths.Boogaloo_Regular__ttf, 18, FlxColor.fromString("#333333"));
			playButton.autoCenterLabel();
			playButton.screenCenter();
			playButton.y = 250 +  i * 75;
			songButtons.push(playButton);
			add(playButton);

			i++;
		}

		var options = new FlxUIButton(0, 0, "Options", () -> FlxG.switchState(new OptionsMenuState()));
		options.loadGraphic(AssetPaths.menuButton__png, true, 333, 102);
		options.scale.set(0.4, 0.55);
		options.updateHitbox();
		options.label.fieldWidth = options.width;
		options.label.setFormat(AssetPaths.Boogaloo_Regular__ttf, 16, FlxColor.fromString("#333333"));
		options.autoCenterLabel();
		options.x = 15;
		options.y = FlxG.height - 60;
		add(options);

		// layout switchers


		#if FLX_MOUSE
		FlxG.mouse.visible = true;
		#end
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function clickPlay(fname:String)
	{
		var song = SongData.getSong(fname);
		PlayState.song = song;
		PlayState.soundfile = PlayState.isSlowMode ? song.musicFile_slow : song.musicFile;
		GameOverState.song = song;		
		
		FlxG.switchState(new PlayState());
	}
}
