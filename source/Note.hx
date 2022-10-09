package;

/*
 * Comments about notes
 * lengths/positions are measured in sixteenth note increments
 *
 * position is the start of the note
 * In a 4-beat measure, 0 is the start, and 15 is the last possible position
 *
 *
 * TODOS
 * triplets?
 */
enum NoteLength
{
	Whole;
	DottedHalf;
	Half;
	Quarter;
	DottedQuarter;
	DottedEighth;
	Eighth;
	Sixteenth;
}

// remappings from QWERTY keys to other layouts
var azerty:Map<String, String> = 
[
	"Q" => "A",
	"W" => "Z",
	"A" => "Q",
	"Z" => "W",
	"M" => ",", // kinda sucks
];


var qwertz:Map<String, String> = 
[
	"Y" => "Z",
	"Z" => "Y",
];

var dvorak:Map<String, String> = 
[
	"Q" => "'",
	"W" => ",",
	"E" => ".",
	"R" => "P",
	"T" => "Y",
	"Y" => "F",
	"U" => "G",
	"I" => "C",
	"O" => "R",
	"P" => "L",

	"S" => "O",
	"D" => "E",
	"F" => "U",
	"G" => "I",
	"H" => "D",
	"J" => "H",
	"K" => "T",
	"L" => "N",

	"Z" => ";",
	"X" => "Q",
	"C" => "J",
	"V" => "K",
	"B" => "X",
	"N" => "B",
];

var colemak:Map<String, String> = 
[
	"E" => "F",
	"R" => "P",
	"T" => "G",
	"Y" => "J",
	"U" => "L",
	"I" => "U",
	"O" => "Y",
	"P" => ";",
	"S" => "R",
	"D" => "S",
	"F" => "T",
	"G" => "D",
	"J" => "N",
	"K" => "E",
	"L" => "I",
	"N" => "K",
];

var colemakdh:Map<String, String> = 
[
	"E" => "F",
	"R" => "P",
	"T" => "B",
	"Y" => "J",
	"U" => "L",
	"I" => "U",
	"O" => "Y",
	"P" => ";",
	"S" => "R",
	"D" => "S",
	"F" => "T",
	"H" => "M",
	"J" => "N",
	"K" => "E",
	"L" => "I",
	"V" => "D",
	"B" => "V",
	"N" => "K",
	"M" => "H",
];


var remaps:Map<String, Map<String, String>> = 
[
	"QWERTY" => [],
	"AZERTY" => azerty,
	"QWERTZ" => qwertz,
	"DVORAK" => dvorak,
	"COLEMAK" => colemak,
	"COLEMAK DH" => colemakdh,
];

typedef Note =
{
	var ?letter:String;
	var ?isRemapKey:Bool; // key that can be remapped depending on layout
	var length:NoteLength;
	var position:Int;
	var ?isRest:Bool;
	var ?measureLength:Int; // hack to change measure length from 16
}

// map the letter based on keyboard layout
function getLetter(n:Note, layout:String):String
{
	if (n.isRemapKey)
	{
		var map = remaps[layout];
		// check if letter is in the remap
		if (map.exists(n.letter))
		{
			return map[n.letter];
		}
	}
	return n.letter;
}

overload extern inline function getLength(n:Note):Int
{
	switch (n.length)
	{
		case Whole:
			return 16;
		case DottedHalf:
		  return 12;
		case Half:
			return 8;
		case Quarter:
			return 4;
		case DottedQuarter:
			return 6;
		case DottedEighth:
			return 3;
		case Eighth:
			return 2;
		case Sixteenth:
			return 1;
	}
}
