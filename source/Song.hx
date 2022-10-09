package;

import flixel.system.FlxAssets.FlxSoundAsset;

typedef Measure = Array<Note>;

// Each Line is displayed separately.
// Usually a Line should be either 2 or 4 measures (depending on how many notes need to be drawn).
typedef Line = Array<Measure>;

// Important! This last sixteenth note of every line should be
// empty to allow for the line transition.
// Hopefully this is not an issue in song design.
class Song
{
	public var fname:String; // unique identifying string for this song

	public var name:String; // full title
	public var artist:String;
	public var bpm:Float;
	public var startDelay:Float = 0; // milliseconds until beat 1, if audio file does not exactly start there
	public var completionText:String; // text to be displayed if you complete the song

	public var musicFile:FlxSoundAsset;
	public var musicFile_slow:FlxSoundAsset;

	public var data:Array<Line>;

	public function new(ffname:String, nname:String, aartist:String, 
		bbpm:Float, sstartDelay:Float, ttext:String,
		mf:FlxSoundAsset, mfs:FlxSoundAsset,
		ddata:Array<Line>)
	{
		fname = ffname;

		name = nname;
		artist = aartist;
		bpm = bbpm;
		startDelay = sstartDelay;
		completionText = ttext;
		musicFile = mf;
		musicFile_slow = mfs;
		data = ddata;
	}
}
