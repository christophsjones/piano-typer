package;

import PlayState.STAFFSPACING;
import PlayState.MAX_HEALTH;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class BarSprite extends FlxSprite
{

	var MAX_LEN = 4 * STAFFSPACING + 20;
	var back:FlxSprite;

	public function new(x:Float = 0, y:Float = 0, hp:Float)
	{
		super(x, y - 10);
		health = hp;

		back = new FlxSprite(x, y - 10);
		back.makeGraphic(2, MAX_LEN, FlxColor.RED);

		// makeGraphic(1, 4 * STAFFSPACING + 20, FlxColor.BLACK);
		var len = Std.int(Math.max(1, health / MAX_HEALTH * MAX_LEN));
		// makeGraphic(2, MAX_LEN, FlxColor.BLACK);
		makeGraphic(2, len, FlxColor.BLACK);
	}

	override public function draw()
	{
		back.x = x;
		back.draw();
		
		var len = Std.int(Math.max(1, health / MAX_HEALTH * MAX_LEN));
		// makeGraphic(2, MAX_LEN, FlxColor.BLACK);
		makeGraphic(2, len, FlxColor.BLACK);
		super.draw();	
	}
}
