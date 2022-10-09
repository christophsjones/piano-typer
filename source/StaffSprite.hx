package;

import PlayState.LEFTMARGIN;
import PlayState.PLAYABLEWIDTH;
import PlayState.STAFFSPACING;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxColor;

class StaffSprite extends FlxTypedSpriteGroup<FlxSprite>
{
	// TODO implement starting and ending to display thicker bars for start and end
	public function new(xMin:Int, xMax:Int, Y:Int, numMeasures:Int = 1, firstBarLastNotePosition:Int = 15, starting:Bool = false, ending:Bool = false)
	{
		super(xMin, Y);

		var width = xMax - xMin;
		for (i in 0...5)
		{
			this.add(new StaffLine(width, i * STAFFSPACING));
		}

		this.add(new BarLine(0));
		this.add(new BarLine(width));
		for (i in 1...numMeasures)
		{
			// nudge the bar based on position of last note in measure
			var thirtySecondWidth = PLAYABLEWIDTH / (32 * numMeasures);

			// max nudge is a quarter note
			var nudge = Math.min(3, (15 - firstBarLastNotePosition)) * thirtySecondWidth;

			var barX = LEFTMARGIN + PLAYABLEWIDTH * (16 * i - 0.5) / (16 * numMeasures) - nudge;

			this.add(new BarLine(barX));
		}
	}
}

class BarLine extends FlxSprite
{
	public function new(x:Float = 0)
	{
		super(x, 0);

		makeGraphic(1, 4 * STAFFSPACING + 1, FlxColor.BLACK);
	}
}

class StaffLine extends FlxSprite
{
	public function new(length:Int, y:Float = 0)
	{
		super(0, y);

		makeGraphic(length, 1, FlxColor.BLACK);
	}
}
