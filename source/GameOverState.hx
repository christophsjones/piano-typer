package;

import Note;
import PlayState.FONTSIZE;
import PlayState.NOTEWIDTH;
import PlayState.STAFFSPACING;
import Song;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

var REWARDS_PRACTICE_TEXT = "Rewards cannot be earned in practice mode";
var REWARDS_FAIL_TEXT = "Complete the song to get a reward!";

class GameOverState extends FlxState
{
	public static var okHits:Int;
	public static var perfectHits:Int;
	public static var misses:Int;
	public static var victory:Bool;
	public static var showRewards:Bool;

	public static var completion:Float;

	public static var song:Song;

	// omg this code is so ugly
	override public function create()
	{
		super.create();

		if (!victory)
			add(new FlxSprite().loadGraphic(AssetPaths.gameOverBGFail__png));
		else
			add(new FlxSprite().loadGraphic(AssetPaths.gameOverBGWinL__png));

		var totalNotes = Math.max(okHits + perfectHits + misses, 1);

		var txt = new FlxText(251.63, 207, 0, "Perfect hits: " + Std.string(perfectHits), 20);
		txt.color = FlxColor.BLACK;
		txt.setBorderStyle(FlxTextBorderStyle.SHADOW); // attempt to add drop shadow but it's not working :(
		add(txt);

		var txt = new FlxText(251.63, 246, 0, "Ok hits: " + Std.string(okHits), 20);
		txt.color = FlxColor.BLACK;
		add(txt);

		var txt = new FlxText(251.63, 286, 0, "Misses: " + Std.string(misses), 20);
		txt.color = FlxColor.BLACK;
		add(txt);

		var txt = new FlxText(428.63, 207, 0, f2s(100 * perfectHits / totalNotes, 1) + "%", 20);
		txt.x -= txt.width;
		txt.color = FlxColor.BLACK;
		add(txt);

		var txt = new FlxText(428.63, 246, 0, f2s(100 * okHits / totalNotes, 1) + "%", 20);
		txt.x -= txt.width;
		txt.color = FlxColor.BLACK;
		add(txt);

		var txt = new FlxText(428.63, 286, 0, f2s(100 * misses / totalNotes, 1) + "%", 20);
		txt.x -= txt.width;
		txt.color = FlxColor.BLACK;
		add(txt);

		var REWARDSPACING = 70;
		var REWARDX = 322;
		var REWARDY = 403;
		if (!showRewards)
		{
			var sorry = new FlxText(REWARDX, REWARDY, 175, REWARDS_PRACTICE_TEXT, 20);
			sorry.color = FlxColor.BLACK;
			sorry.x -= sorry.width / 2;
			add(sorry);
		}
		else if (victory)
		{
			var text = new FlxText(REWARDX, REWARDY, 175, song.completionText, 20);
			text.color = FlxColor.BLACK;
			text.x -= text.width / 2;
			add(text);
		}
		else
		{
			var cmon = new FlxText(REWARDX, REWARDY, 175, REWARDS_FAIL_TEXT, 20);
			cmon.color = FlxColor.BLACK;
			cmon.x -= cmon.width / 2;
			add(cmon);
		}

		#if FLX_MOUSE
		FlxG.mouse.visible = true;
		#end
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// TODO this transition is not safe (need to prevent further keyboard input during transition)
		// should use FlxTransitionableState
		if (FlxG.keys.justPressed.ESCAPE)
			FlxG.switchState(new MenuState());
		if (FlxG.keys.justPressed.R && !victory)
			FlxG.switchState(new PlayState());
	}
}

function f2s(n:Float, prec:Int):String
{
	var mantissa = Math.floor(n);
	n -= mantissa;
	n = Math.round(n * Math.pow(10, prec));
	var str = '' + n;
	var len = str.length;
	if (len <= prec)
	{
		while (len < prec)
		{
			str = '0' + str;
			len++;
		}
	}
	return Std.string(mantissa) + '.' + str;
}
