package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class NoteSprite extends FlxSprite
{
	public var note:Note;
	public var time:Float; // number of milliseconds that the note is at
	// TODO implement later
	public var endTime:Float;
	public var hit:Bool;

	public static var colors:Map<String, FlxColor> =
	[
		"default" => FlxColor.BLACK,
		"miss" => FlxColor.fromString("#ee6677"),
		"early" => FlxColor.fromString("#66ccee"),
		"perfect" => FlxColor.fromString("#228833"),
		"late" => FlxColor.fromString("#ccbb44"),
	];

	public function new(n:Note, x:Float = 0, y:Float = 0, t:Float, c:FlxColor = FlxColor.BLACK)
	{
		super(x, y);

		note = n;
		time = t;
		endTime = time;
		hit = false;

		if (n.isRest)
		{
			switch (n.length)
			{
				case Whole:
					loadGraphic(AssetPaths.rest1__png, false, 11, 30);
				case Half:
					loadGraphic(AssetPaths.rest2__png, false, 11, 30);
				case Quarter:
					loadGraphic(AssetPaths.rest4__png, false, 11, 41);
				case DottedHalf:
					loadGraphic(AssetPaths.rest2d__png, false, 11, 30);
				case DottedQuarter:
					loadGraphic(AssetPaths.rest4d__png, false, 11, 41);
				case DottedEighth:
					loadGraphic(AssetPaths.rest8d__png, false, 11, 30);
				case Eighth:
					loadGraphic(AssetPaths.rest8__png, false, 11, 30);
				case Sixteenth:
					// TODO barred 16ths?
					loadGraphic(AssetPaths.rest16__png, false, 11, 37);
			}
		}
		else
		{
			switch (n.length)
			{
				case Whole:
					loadGraphic(AssetPaths.note1__png, false, 12, 30);
				case Half:
					loadGraphic(AssetPaths.note2__png, false, 12, 30);
				case Quarter:
					loadGraphic(AssetPaths.note4__png, false, 12, 30);
				case DottedHalf:
					loadGraphic(AssetPaths.note2d__png, false, 18, 30);
				case DottedQuarter:
					loadGraphic(AssetPaths.note4d__png, false, 18, 30);
				case DottedEighth:
					loadGraphic(AssetPaths.note8d__png, false, 18, 30);
				case Eighth:
					loadGraphic(AssetPaths.note8__png, false, 18, 30);
				case Sixteenth:
					// TODO barred 16ths?
					loadGraphic(AssetPaths.note16__png, false, 17, 30);
			}
		}	

		// TODO how to improve resolution
		// setGraphicSize(11, 0);
		color = c;
	}
}
