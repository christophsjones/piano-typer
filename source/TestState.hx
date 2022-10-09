package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class TestSprite extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		loadGraphic(AssetPaths.quarterNote__png, false, 30, 50);
		// makeGraphic(10, 10, FlxColor.WHITE);
	}
}

class TestState extends FlxState
{
	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.justPressed.D)
			trace(FlxG.sound.music);

		if (FlxG.keys.justPressed.B)
			FlxG.sound.playMusic(AssetPaths.trapBach__mp3);
		if (FlxG.keys.justPressed.A)
			FlxG.sound.playMusic(AssetPaths.orpheus__mp3);
		if (FlxG.keys.justPressed.C)
			FlxG.sound.playMusic(AssetPaths.toccataAndFugue__mp3);
		if (FlxG.keys.justPressed.H)
			FlxG.sound.playMusic(AssetPaths.moonlightSonata__mp3);

		if (FlxG.keys.justPressed.M)
			FlxG.sound.music.fadeOut();
	}
}
