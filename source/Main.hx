package;

import CalibrationState;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.system.FlxAssets;
import flixel.util.FlxSave;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		var _saveState = new FlxSave();
		_saveState.bind("SaveData");
		CalibrationState._saveState.bind("SaveData");
		OptionsMenuState._saveState.bind("SaveData");
		PlayState.calibration = _saveState.data.calibration == null ? 0 : _saveState.data.calibration;
		PlayState.layout = _saveState.data.layout == null ? "QWERTY" : _saveState.data.layout;
		PlayState.isPractice = _saveState.data.isPractice == null ? false : _saveState.data.isPractice;
		PlayState.isSlowMode = _saveState.data.isSlowMode == null ? false : _saveState.data.isSlowMode;

		FlxAssets.FONT_DEFAULT = AssetPaths.Boogaloo_Regular__ttf;

		// var pianoTyper = new FlxGame(0, 0, TestState);
		var pianoTyper = new FlxGame(0, 0, MenuState, true); // skip splash

		FlxG.sound.soundTrayEnabled = false;
		FlxG.sound.volumeUpKeys = [];
		FlxG.sound.volumeDownKeys = [];

		addChild(pianoTyper);
	}
}
