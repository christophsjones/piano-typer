package;

inline var BEATSPERMEASURE = 4; // maybe this will be flexible in the future

class Conductor
{
	private var bpm:Float;

	public var beatLen:Float; // milliseconds per beat
	public var measureLen:Float;

	public var songPos:Int; // lines into the song
	public var elapsedTime:Float;

	public function new(BPM:Float)
	{
		songPos = 0;
		elapsedTime = 0;

		bpm = BPM;
		beatLen = ((60 / bpm) * 1000);
		measureLen = beatLen * BEATSPERMEASURE;
	}

	public function nextLine(lineLength:Float)
	{
		songPos++;
		elapsedTime += lineLength;
	}
}
