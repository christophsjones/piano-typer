package;

import flixel.system.FlxAssets;

class SongData
{
	private static var trapBach:Song = new Song("trapBach",
	"Violin Concerto in A Minor", "Codec",
	90, 10,
	"🎉Congratulations! You completed the tutorial song!",
	AssetPaths.trapBach__mp3, AssetPaths.trapBach_slow__mp3, 
	[
		[
			[{length: Whole, position: 0, isRest: true}],
			[{length: Whole, position: 0, isRest: true}]
		],
		[
			[{length: Whole, position: 0, isRest: true}],
			[{length: Whole, position: 0, isRest: true}]
		],
		[
			[
				{letter: "S", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "T", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "T", length: Quarter, position: 0},
				{letter: "U", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{letter: "O", length: Quarter, position: 12}
			],
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 8},
				{letter: "L", length: Quarter, position: 12}
			]
		],
		// first beat drop
		[
			[
				{letter: "B", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "E", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "T", length: Quarter, position: 4},
				{letter: "S", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{letter: "F", length: Quarter, position: 12}
			],
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "E", length: Quarter, position: 4},
				{letter: "S", length: Quarter, position: 8},
				{letter: "H", length: Quarter, position: 12}
			]
		],
		// no drum
		[
			[
				{letter: "N", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "O", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "T", length: Quarter, position: 0},
				{letter: "E", length: Quarter, position: 4},
				{letter: "D", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "L", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 8},
				{letter: "S", length: Quarter, position: 12}
			],
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "C", length: Quarter, position: 8},
				{letter: "S", length: Quarter, position: 12}
			]
		],
		// drum reenters
		[
			[
				{letter: "D", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "R", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "U", length: Quarter, position: 0},
				{letter: "M", length: Quarter, position: 4},
				{letter: "S", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "T", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 8},
				{letter: "P", length: Quarter, position: 12}
			],
			[
				{letter: "B", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{letter: "C", length: Quarter, position: 8},
				{letter: "H", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "R", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "E", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "M", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "X", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "D", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "O", length: Quarter, position: 8},
				{letter: "P", length: Quarter, position: 12}
			],
			[
				{letter: "P", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 8},
				{letter: "G", length: Quarter, position: 12}
			]
		],
		// theme B
		[
			[
				{letter: "S", length: DottedQuarter, position: 0}, // 1 e and a 2 e
				{letter: "O", length: Sixteenth, position: 6}, // and
				{letter: "D", length: Sixteenth, position: 7}, // a
				{letter: "O", length: Eighth, position: 8}, // 3 e
				{letter: "N", length: Quarter, position: 10}, // and a 4 e
				{letter: "T", length: Eighth, position: 14} // and a
			],
			[
				{letter: "T", length: DottedQuarter, position: 0}, // 1 e and a 2 e
				{letter: "R", length: Sixteenth, position: 6}, // and
				{letter: "Y", length: Sixteenth, position: 7}, // a
				{letter: "R", length: Eighth, position: 8}, // 3 e
				{letter: "E", length: Quarter, position: 10}, // and a 4 e
				{letter: "C", length: Eighth, position: 14} // and a
				// -- don't split this to indiv. notes because the last 16th can't be a note b/c transition
			],
		],
		[
			[
				{letter: "O", length: DottedQuarter, position: 0},
				{letter: "R", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "I", length: Eighth, position: 10},
				{letter: "N", length: Eighth, position: 12},
				{letter: "G", length: Eighth, position: 14}
			],
			[
				{letter: "N", length: Quarter, position: 0},
				{letter: "O", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{letter: "E", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "L", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "B", length: Quarter, position: 4},
				{letter: "E", length: DottedQuarter, position: 8},
				{letter: "L", length: Eighth, position: 14}
			],
			[
				{letter: "S", length: DottedQuarter, position: 0},
				{letter: "N", length: Eighth, position: 6},
				{letter: "O", length: Quarter, position: 8},
				{letter: "T", length: Quarter, position: 12}
			]
		],
		[
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "A", length: Quarter, position: 4},
				{length: Quarter, position: 8, isRest: true},
				{letter: "N", length: Quarter, position: 12}
			],
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "E", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{letter: "D", length: Quarter, position: 12}
			]
		],
		// second beat drop
		[
			[
				{letter: "V", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "I", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "B", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "H", length: Quarter, position: 4},
				{letter: "Y", length: Quarter, position: 8},
				{letter: "T", length: Quarter, position: 12}
			],
			[
				{letter: "H", length: Quarter, position: 0},
				{letter: "M", length: Quarter, position: 4},
				{letter: "I", length: Quarter, position: 8},
				{letter: "C", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "M", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "U", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "C", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "O", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 8},
				{letter: "C", length: Quarter, position: 12}
			],
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{letter: "O", length: Quarter, position: 12}
			]
		],
		// just cello
		[
			[
				{letter: "S", length: DottedQuarter, position: 0}, // 1 e and a 2 e
				{letter: "O", length: Sixteenth, position: 6}, // and
				{letter: "D", length: Sixteenth, position: 7}, // a
				{letter: "O", length: Eighth, position: 8}, // 3 e
				{letter: "N", length: Quarter, position: 10}, // and a 4 e
				{letter: "T", length: Eighth, position: 14} // and a
			],
			[
				{letter: "T", length: DottedQuarter, position: 0}, // 1 e and a 2 e
				{letter: "R", length: Sixteenth, position: 6}, // and
				{letter: "Y", length: Sixteenth, position: 7}, // a
				{letter: "R", length: Eighth, position: 8}, // 3 e
				{letter: "E", length: Quarter, position: 10}, // and a 4 e
				{letter: "A", length: Eighth, position: 14} // and a
				// -- don't split this to indiv. notes because the last 16th can't be a note b/c transition
			],
		],
		[
			[
				{letter: "C", length: DottedQuarter, position: 0},
				{letter: "H", length: Eighth, position: 6},
				{letter: "I", length: Eighth, position: 8},
				{letter: "N", length: Eighth, position: 10},
				{letter: "G", length: Eighth, position: 12},
				{letter: "P", length: Eighth, position: 14}
			],
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "F", length: Quarter, position: 8},
				{letter: "E", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "C", length: Eighth, position: 0},
				{letter: "T", length: Eighth, position: 2},
				{letter: "S", length: Quarter, position: 4},
				{letter: "C", length: DottedQuarter, position: 8},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "R", length: DottedQuarter, position: 0},
				{letter: "E", length: Eighth, position: 6},
				{letter: "S", length: Quarter, position: 8},
				{letter: "E", length: Quarter, position: 12}
			]
		],
		[
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "I", length: Quarter, position: 4},
				{length: Quarter, position: 8, isRest: true},
				{letter: "T", length: Quarter, position: 12}
			],
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "H", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{letter: "R", length: Quarter, position: 12},
			]
		],
		// main theme
		[
			[
				{letter: "T", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "H", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "M", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "E", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{letter: "U", length: Quarter, position: 12}
			],
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{letter: "D", length: Quarter, position: 12}
			]
		],
		// third beat drop
		[
			[
				{letter: "G", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "R", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "T", length: Quarter, position: 8},
				{letter: "I", length: Quarter, position: 12}
			],
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "T", length: Quarter, position: 4},
				{letter: "R", length: Quarter, position: 8},
				{letter: "Y", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "Y", length: Quarter, position: 0},
				{length: Quarter, position: 4, isRest: true},
				{letter: "O", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			],
			[
				{letter: "U", length: Quarter, position: 0},
				{letter: "V", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		[
			[
				{letter: "F", length: Quarter, position: 0},
				{letter: "I", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 8},
				{letter: "I", length: Quarter, position: 12}
			],
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "H", length: Quarter, position: 4},
				{letter: "E", length: Quarter, position: 8},
				{letter: "D", length: Quarter, position: 12}
			]
		],
		// out of time
		[
			[{length: Whole, position: 0, isRest: true}],
			[{length: Whole, position: 0, isRest: true}]
		]
	]);
	private static var orpheus:Song = new Song("orpheus",
	"Orpheus in the Underworld", "Ankaa Classical",
	173, 390,
	"💃It looks like you could-could finish it after all!",
	AssetPaths.orpheus__mp3, AssetPaths.orpheus_slow__mp3,  
	[
		[
			[{length: Whole, position: 0, isRest: true}],
			[
				{length: Half, position: 0, isRest: true},
				{letter: "L", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "J", length: DottedQuarter, position: 10, isRemapKey: true},
			]
		],
		[
			[{length: Whole, position: 0, isRest: true},],
			[
				{length: Whole, position: 0, isRest: true},
				{length: Whole, position: 0, measureLength: 8}
			]
		], // second measure is only 2 beats long
		[
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true}]
		],
		[
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true}]
		],
		// main theme
		[
			[
				{letter: "Q", length: Eighth, position: 0},
				{letter: "U", length: Eighth, position: 2},
				{letter: "U", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "N", length: Eighth, position: 8},
				{letter: "T", length: Eighth, position: 10},
				{letter: "T", length: Eighth, position: 12},
				{letter: "U", length: Eighth, position: 14}
			],
			[
				{letter: "P", length: Eighth, position: 0},
				{letter: "L", length: Eighth, position: 2},
				{letter: "L", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "T", length: Eighth, position: 8},
				{letter: "S", length: Eighth, position: 10},
				{letter: "S", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "H", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "L", length: Eighth, position: 6},
				{letter: "F", length: Eighth, position: 8},
				{letter: "N", length: Eighth, position: 10},
				{letter: "N", length: Eighth, position: 12},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "T", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "T", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "T", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "T", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "F", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "N", length: Eighth, position: 6},
				{letter: "T", length: Eighth, position: 8},
				{letter: "A", length: Eighth, position: 10},
				{letter: "A", length: Eighth, position: 12},
				{letter: "S", length: Eighth, position: 14}
			],
			[
				{letter: "T", length: Eighth, position: 0},
				{letter: "I", length: Eighth, position: 2},
				{letter: "I", length: Eighth, position: 4},
				{letter: "C", length: Eighth, position: 6},
				{letter: "A", length: Eighth, position: 8},
				{letter: "L", length: Eighth, position: 10},
				{letter: "L", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "S", length: Eighth, position: 0},
				{letter: "O", length: Eighth, position: 2},
				{letter: "O", length: Eighth, position: 4},
				{letter: "L", length: Eighth, position: 6},
				{letter: "I", length: Eighth, position: 8},
				{letter: "T", length: Eighth, position: 10},
				{letter: "T", length: Eighth, position: 12},
				{letter: "A", length: Eighth, position: 14}
			],
			[
				{letter: "I", length: Eighth, position: 0},
				{letter: "R", length: Eighth, position: 2},
				{letter: "I", length: Eighth, position: 4},
				{letter: "R", length: Eighth, position: 6},
				{letter: "E", length: Half, position: 8}
			]
		],
		// main theme repeats
		[
			[
				{letter: "W", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "T", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "R", length: Eighth, position: 10},
				{letter: "R", length: Eighth, position: 12},
				{letter: "M", length: Eighth, position: 14}
			],
			[
				{letter: "E", length: Eighth, position: 0},
				{letter: "L", length: Eighth, position: 2},
				{letter: "L", length: Eighth, position: 4},
				{letter: "O", length: Eighth, position: 6},
				{letter: "N", length: Eighth, position: 8},
				{letter: "S", length: Eighth, position: 10},
				{letter: "S", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "R", length: Eighth, position: 0},
				{letter: "H", length: Eighth, position: 2},
				{letter: "H", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "P", length: Eighth, position: 8},
				{letter: "S", length: Eighth, position: 10},
				{letter: "S", length: Eighth, position: 12},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "D", length: Eighth, position: 0},
				{letter: "Y", length: Eighth, position: 2},
				{letter: "D", length: Eighth, position: 4},
				{letter: "Y", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "Y", length: Eighth, position: 10},
				{letter: "D", length: Eighth, position: 12},
				{letter: "Y", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "N", length: Eighth, position: 0},
				{letter: "O", length: Eighth, position: 2},
				{letter: "O", length: Eighth, position: 4},
				{letter: "N", length: Eighth, position: 6},
				{letter: "S", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "N", length: Eighth, position: 14}
			],
			[
				{letter: "S", length: Eighth, position: 0},
				{letter: "I", length: Eighth, position: 2},
				{letter: "I", length: Eighth, position: 4},
				{letter: "C", length: Eighth, position: 6},
				{letter: "A", length: Eighth, position: 8},
				{letter: "L", length: Eighth, position: 10},
				{letter: "L", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "B", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "E", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "T", length: Eighth, position: 8},
				{letter: "H", length: Eighth, position: 10},
				{letter: "H", length: Eighth, position: 12},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "V", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "V", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "N", length: Half, position: 8}
			]
		],
		// chord chord chord chord
		[
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "D", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "L", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 8, isRemapKey: true},
				{letter: "E", length: Quarter, position: 8, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "U", length: Quarter, position: 12, isRemapKey: true},
				{letter: "O", length: Quarter, position: 12, isRemapKey: true},
			],
			// notes!
			[
				{letter: "F", length: Eighth, position: 0},
				{letter: "I", length: Eighth, position: 2},
				{letter: "R", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "U", length: Eighth, position: 10},
				{letter: "P", length: Quarter, position: 12},
			]
		],
		[
			// Chord chord chord chord
			[
				{letter: "Q", length: Quarter, position: 0, isRemapKey: true},
				{letter: "E", length: Quarter, position: 0, isRemapKey: true},
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 4, isRemapKey: true},
				{letter: "O", length: Quarter, position: 4, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{letter: "D", length: Quarter, position: 8, isRemapKey: true},
				{letter: "G", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
				{letter: "L", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "S", length: Eighth, position: 0},
				{letter: "C", length: Eighth, position: 2},
				{letter: "R", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "P", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "D", length: Quarter, position: 12},
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "D", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "L", length: Quarter, position: 0, isRemapKey: true},
				{letter: "A", length: Quarter, position: 4, isRemapKey: true},
				{letter: "D", length: Quarter, position: 4, isRemapKey: true},
				{letter: "G", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "L", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 8, isRemapKey: true},
				{letter: "E", length: Quarter, position: 8, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "U", length: Quarter, position: 8, isRemapKey: true},
				{letter: "O", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 12, isRemapKey: true},
				{letter: "E", length: Quarter, position: 12, isRemapKey: true},
				{letter: "T", length: Quarter, position: 12, isRemapKey: true},
				{letter: "U", length: Quarter, position: 12, isRemapKey: true},
				{letter: "O", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "R", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "L", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "P", length: Eighth, position: 8},
				{letter: "S", length: Eighth, position: 10},
				{letter: "E", length: Quarter, position: 12},
			]
		],
		[
			[
				{letter: "Q", length: Quarter, position: 0, isRemapKey: true},
				{letter: "E", length: Quarter, position: 0, isRemapKey: true},
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 0, isRemapKey: true},
				{letter: "O", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 4, isRemapKey: true},
				{letter: "E", length: Quarter, position: 4, isRemapKey: true},
				{letter: "T", length: Quarter, position: 4, isRemapKey: true},
				{letter: "U", length: Quarter, position: 4, isRemapKey: true},
				{letter: "O", length: Quarter, position: 4, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{letter: "D", length: Quarter, position: 8, isRemapKey: true},
				{letter: "G", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "L", length: Quarter, position: 8, isRemapKey: true},
				{letter: "A", length: Quarter, position: 12, isRemapKey: true},
				{letter: "D", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Quarter, position: 12, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
				{letter: "L", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
				{length: Whole, position: 0, measureLength: 8}]
		], // second measure is only 2 beats long
		// transition
		// Mentally reset as the guitar goes wild.
		[
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
		],
		[
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
				{length: Whole, position: 0, measureLength: 8}]
		], // second measure is only 2 beats long
		// theme B
		// TODO make these 5-letter words alternate left and right hand?
		[
			[
				{letter: "G", length: Quarter, position: 0},
				{letter: "G", length: Quarter, position: 4},
				{letter: "H", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "S", length: Eighth, position: 12},
				{letter: "T", length: Eighth, position: 14}
			],
			[
				{letter: "P", length: Quarter, position: 0},
				{letter: "P", length: Quarter, position: 4},
				{letter: "R", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "V", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "S", length: Quarter, position: 4},
				{letter: "T", length: Eighth, position: 8},
				{letter: "A", length: Eighth, position: 10},
				{letter: "V", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			],
			// Downward scale!
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true}, // 1
				{letter: "K", length: Eighth, position: 2, isRemapKey: true}, // and
				{letter: "J", length: Eighth, position: 4, isRemapKey: true}, // 2
				{letter: "H", length: Eighth, position: 6, isRemapKey: true}, // and
				{letter: "G", length: Eighth, position: 8, isRemapKey: true}, // 3
				{letter: "F", length: Eighth, position: 10, isRemapKey: true}, // and
				{letter: "D", length: Eighth, position: 12, isRemapKey: true}, // 4
				{letter: "S", length: Eighth, position: 14, isRemapKey: true}, // and
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Eighth, position: 8},
				{letter: "G", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "R", length: Eighth, position: 14}
			],
			[
				{letter: "T", length: Quarter, position: 0},
				{letter: "T", length: Quarter, position: 4},
				{letter: "H", length: Eighth, position: 8},
				{letter: "R", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "S", length: Quarter, position: 4},
				{letter: "H", length: Eighth, position: 8},
				{letter: "A", length: Eighth, position: 10},
				{letter: "R", length: Eighth, position: 12},
				{letter: "P", length: Eighth, position: 14}
			],
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "L", length: Eighth, position: 2, isRemapKey: true},
				{letter: "K", length: Eighth, position: 4, isRemapKey: true},
				{letter: "L", length: Eighth, position: 6, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		// theme B repeats
		[
			[
				{letter: "T", length: Quarter, position: 0},
				{letter: "T", length: Quarter, position: 4},
				{letter: "R", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "P", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			],
			[
				{letter: "W", length: Quarter, position: 0},
				{letter: "W", length: Quarter, position: 4},
				{letter: "O", length: Eighth, position: 8},
				{letter: "R", length: Eighth, position: 10},
				{letter: "K", length: Eighth, position: 12},
				{letter: "S", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "P", length: Quarter, position: 0},
				{letter: "P", length: Quarter, position: 4},
				{letter: "O", length: Eighth, position: 8},
				{letter: "K", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "R", length: Eighth, position: 14}
			],
			// Downward scale!
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true}, // 1
				{letter: "K", length: Eighth, position: 2, isRemapKey: true}, // and
				{letter: "J", length: Eighth, position: 4, isRemapKey: true}, // 2
				{letter: "H", length: Eighth, position: 6, isRemapKey: true}, // and
				{letter: "G", length: Eighth, position: 8, isRemapKey: true}, // 3
				{letter: "F", length: Eighth, position: 10, isRemapKey: true}, // and
				{letter: "D", length: Eighth, position: 12, isRemapKey: true}, // 4
				{letter: "S", length: Eighth, position: 14, isRemapKey: true}, // and
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{letter: "I", length: Eighth, position: 8},
				{letter: "L", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "D", length: Eighth, position: 14}
			],
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "R", length: Quarter, position: 4},
				{letter: "U", length: Eighth, position: 8},
				{letter: "N", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "S", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "L", length: Quarter, position: 0},
				{letter: "L", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8},
				{letter: "T", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "X", length: Eighth, position: 14}
			],
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "L", length: Eighth, position: 2, isRemapKey: true},
				{letter: "K", length: Eighth, position: 4, isRemapKey: true},
				{letter: "L", length: Eighth, position: 6, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		// main theme
		[
			[
				{letter: "E", length: Eighth, position: 0},
				{letter: "V", length: Eighth, position: 2},
				{letter: "V", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "P", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "O", length: Eighth, position: 12},
				{letter: "R", length: Eighth, position: 14}
			],
			[
				{letter: "A", length: Eighth, position: 0},
				{letter: "T", length: Eighth, position: 2},
				{letter: "T", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "O", length: Eighth, position: 8},
				{letter: "N", length: Eighth, position: 10},
				{letter: "N", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "A", length: Eighth, position: 0},
				{letter: "N", length: Eighth, position: 2},
				{letter: "N", length: Eighth, position: 4},
				{letter: "T", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "L", length: Eighth, position: 10},
				{letter: "L", length: Eighth, position: 12},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "P", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "P", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "P", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "P", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "V", length: Eighth, position: 0},
				{letter: "O", length: Eighth, position: 2},
				{letter: "O", length: Eighth, position: 4},
				{letter: "R", length: Eighth, position: 6},
				{letter: "A", length: Eighth, position: 8},
				{letter: "C", length: Eighth, position: 10},
				{letter: "C", length: Eighth, position: 12},
				{letter: "I", length: Eighth, position: 14}
			],
			[
				{letter: "O", length: Eighth, position: 0},
				{letter: "U", length: Eighth, position: 2},
				{letter: "U", length: Eighth, position: 4},
				{letter: "S", length: Eighth, position: 6},
				{letter: "L", length: Eighth, position: 8},
				{letter: "Y", length: Eighth, position: 10},
				{letter: "Y", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "L", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "N", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "S", length: Eighth, position: 10},
				{letter: "S", length: Eighth, position: 12},
				{letter: "C", length: Eighth, position: 14}
			],
			[
				{letter: "A", length: Eighth, position: 0},
				{letter: "P", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "P", length: Eighth, position: 6},
				{letter: "E", length: Half, position: 8}
			]
		],
		// chord chord chord chord
		[
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "D", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "L", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 8, isRemapKey: true},
				{letter: "E", length: Quarter, position: 8, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "U", length: Quarter, position: 12, isRemapKey: true},
				{letter: "O", length: Quarter, position: 12, isRemapKey: true},
			],
			// notes!
			[
				{letter: "T", length: Eighth, position: 0},
				{letter: "O", length: Eighth, position: 2},
				{letter: "O", length: Eighth, position: 4},
				{letter: "L", length: Eighth, position: 6},
				{letter: "B", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "X", length: Quarter, position: 12},
			]
		],
		[
			// Chord chord chord chord
			[
				{letter: "Q", length: Quarter, position: 0, isRemapKey: true},
				{letter: "E", length: Quarter, position: 0, isRemapKey: true},
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 4, isRemapKey: true},
				{letter: "O", length: Quarter, position: 4, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{letter: "D", length: Quarter, position: 8, isRemapKey: true},
				{letter: "G", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
				{letter: "L", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "M", length: Eighth, position: 0},
				{letter: "A", length: Eighth, position: 2},
				{letter: "R", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "M", length: Eighth, position: 8},
				{letter: "B", length: Eighth, position: 10},
				{letter: "A", length: Quarter, position: 12},
			]
		],
		[
			// Chord chord chord chord
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "D", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "L", length: Quarter, position: 0, isRemapKey: true},
				{letter: "A", length: Quarter, position: 4, isRemapKey: true},
				{letter: "D", length: Quarter, position: 4, isRemapKey: true},
				{letter: "G", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "L", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 8, isRemapKey: true},
				{letter: "E", length: Quarter, position: 8, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "U", length: Quarter, position: 8, isRemapKey: true},
				{letter: "O", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 12, isRemapKey: true},
				{letter: "E", length: Quarter, position: 12, isRemapKey: true},
				{letter: "T", length: Quarter, position: 12, isRemapKey: true},
				{letter: "U", length: Quarter, position: 12, isRemapKey: true},
				{letter: "O", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "C", length: Eighth, position: 0},
				{letter: "O", length: Eighth, position: 2},
				{letter: "L", length: Eighth, position: 4},
				{letter: "L", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "G", length: Eighth, position: 10},
				{letter: "E", length: Quarter, position: 12},
			]
		],
		[
			// Chord chord chord chord
			[
				{letter: "Q", length: Quarter, position: 0, isRemapKey: true},
				{letter: "E", length: Quarter, position: 0, isRemapKey: true},
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 0, isRemapKey: true},
				{letter: "O", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 4, isRemapKey: true},
				{letter: "E", length: Quarter, position: 4, isRemapKey: true},
				{letter: "T", length: Quarter, position: 4, isRemapKey: true},
				{letter: "U", length: Quarter, position: 4, isRemapKey: true},
				{letter: "O", length: Quarter, position: 4, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{letter: "D", length: Quarter, position: 8, isRemapKey: true},
				{letter: "G", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "L", length: Quarter, position: 8, isRemapKey: true},
				{letter: "A", length: Quarter, position: 12, isRemapKey: true},
				{letter: "D", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Quarter, position: 12, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
				{letter: "L", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
				{length: Whole, position: 0, measureLength: 8}]
		], // second measure is only 2 beats long
		// transition
		[
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "F", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "F", length: Quarter, position: 12, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "F", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "F", length: Quarter, position: 12, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "F", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 4, isRemapKey: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "F", length: Quarter, position: 12, isRemapKey: true},
				{letter: "J", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
				{length: Whole, position: 0, measureLength: 8}]
		], // second measure is only 2 beats long
		// theme B
		// CAN CAN!
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "Q", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "P", length: Eighth, position: 8, isRemapKey: true},
				{letter: "O", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "U", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 10, isRemapKey: true},
				{letter: "D", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			// Downward scale!
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true}, // 1
				{letter: "K", length: Eighth, position: 2, isRemapKey: true}, // and
				{letter: "J", length: Eighth, position: 4, isRemapKey: true}, // 2
				{letter: "H", length: Eighth, position: 6, isRemapKey: true}, // and
				{letter: "G", length: Eighth, position: 8, isRemapKey: true}, // 3
				{letter: "F", length: Eighth, position: 10, isRemapKey: true}, // and
				{letter: "D", length: Eighth, position: 12, isRemapKey: true}, // 4
				{letter: "S", length: Eighth, position: 14, isRemapKey: true}, // and
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "A", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "P", length: Eighth, position: 8, isRemapKey: true},
				{letter: "O", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "U", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 10, isRemapKey: true},
				{letter: "D", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "F", length: Eighth, position: 2, isRemapKey: true},
				{letter: "S", length: Eighth, position: 4, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		// theme B repeats
		// CAN CAN!
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "Q", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "P", length: Eighth, position: 8, isRemapKey: true},
				{letter: "O", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "U", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 10, isRemapKey: true},
				{letter: "D", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			// Downward scale!
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true}, // 1
				{letter: "K", length: Eighth, position: 2, isRemapKey: true}, // and
				{letter: "J", length: Eighth, position: 4, isRemapKey: true}, // 2
				{letter: "H", length: Eighth, position: 6, isRemapKey: true}, // and
				{letter: "G", length: Eighth, position: 8, isRemapKey: true}, // 3
				{letter: "F", length: Eighth, position: 10, isRemapKey: true}, // and
				{letter: "D", length: Eighth, position: 12, isRemapKey: true}, // 4
				{letter: "S", length: Eighth, position: 14, isRemapKey: true}, // and
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0, isRemapKey: true},
				{letter: "A", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Q", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "P", length: Eighth, position: 8, isRemapKey: true},
				{letter: "O", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "U", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 10, isRemapKey: true},
				{letter: "D", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "F", length: Eighth, position: 2, isRemapKey: true},
				{letter: "S", length: Eighth, position: 4, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true}
			]
		],
		// theme B again!
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "Q", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "P", length: Eighth, position: 8, isRemapKey: true},
				{letter: "O", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "U", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 0},
				{letter: "N", length: Quarter, position: 0},
				{letter: "C", length: Quarter, position: 4},
				{letter: "A", length: Quarter, position: 4},
				{letter: "N", length: Quarter, position: 4},
				{letter: "A", length: Eighth, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 10, isRemapKey: true},
				{letter: "D", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			// Downward scale!
			[
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "F", length: Eighth, position: 2, isRemapKey: true},
				{letter: "S", length: Eighth, position: 4, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "O", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true}
			],
		],
		[[{length: Whole, position: 0, isRest: true}]]
	]);
	private static var toccataAndFugue:Song = new Song("toccataAndFugue",
	"Toccata and Fugue", "Jennifer Thomas",
	105, 6840,
	"🎵No need to come Bach to this one",
	AssetPaths.toccataAndFugue__mp3, AssetPaths.toccataAndFugue_slow__mp3,
	[
		[
			[{length: Whole, position: 0, isRest: true}],
			[{length: Whole, position: 0, isRest: true}]
		],
		// Theme 1: keep it simple.
		[
			[
				{letter: "E", length: Quarter, position: 0, isRemapKey: true},
				{letter: "T", length: Quarter, position: 4, isRemapKey: true},
				{letter: "R", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 8, isRemapKey: true},
				{letter: "I", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			// Start coming down.
			[
				{letter: "U", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 4, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "R", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "L", length: Quarter, position: 0, isRemapKey: true},
				{letter: "K", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			// Not going down any more (transition)
			[
				{letter: "M", length: Quarter, position: 0, isRemapKey: true},
				{letter: "N", length: Quarter, position: 4, isRemapKey: true},
				{letter: "M", length: Quarter, position: 8, isRemapKey: true},
				{letter: "N", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "Z", length: Half, position: 0, isRemapKey: true},
				{letter: "M", length: Half, position: 0, isRemapKey: true},
				// Go up again!
				{letter: "E", length: Quarter, position: 8, isRemapKey: true},
				{letter: "T", length: Quarter, position: 12, isRemapKey: true},
			],
		],
		[
			[
				{letter: "R", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 4, isRemapKey: true},
				{letter: "T", length: Quarter, position: 8, isRemapKey: true},
				{letter: "U", length: Quarter, position: 12, isRemapKey: true},
			],
			// Come down.
			[
				{letter: "Y", length: Quarter, position: 0, isRemapKey: true},
				{letter: "I", length: Quarter, position: 4, isRemapKey: true},
				{letter: "U", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 12, isRemapKey: true},
			],
		],
		[
			[
				{letter: "T", length: Quarter, position: 0, isRemapKey: true},
				{letter: "R", length: Quarter, position: 4, isRemapKey: true},
				{letter: "L", length: Quarter, position: 8, isRemapKey: true},
				{letter: "K", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{letter: "H", length: Quarter, position: 4, isRemapKey: true},
				{letter: "M", length: Quarter, position: 8, isRemapKey: true},
				{letter: "N", length: Quarter, position: 12, isRemapKey: true},
			],
		],
		[
			[
				{letter: "B", length: Quarter, position: 0, isRemapKey: true},
				{letter: "B", length: Quarter, position: 4, isRemapKey: true},
				{letter: "B", length: Quarter, position: 8, isRemapKey: true},
				{letter: "B", length: Quarter, position: 12, isRemapKey: true},
				{letter: "V", length: Quarter, position: 12, isRemapKey: true},
			],
			// Singing begins.
			[{letter: "S", length: Whole, position: 0}],
		],
		[
			[
				{letter: "I", length: DottedHalf, position: 0},
				{letter: "N", length: Quarter, position: 12},
			],
			[{letter: "G", length: Whole, position: 0}],
		],
		[
			[
				{length: Half, position: 0, isRest: true},
				{letter: "L", length: Half, position: 8}
			],
			[
				{letter: "O", length: DottedHalf, position: 0},
				{letter: "U", length: Quarter, position: 12},
			],
		],
		[
			[
				{letter: "D", length: Half, position: 0},
				{letter: "L", length: Half, position: 8},
			],
			[{letter: "Y", length: Whole, position: 0}],
		],
		[
			[{length: Whole, position: 0, isRest: true}],
			[
				{letter: "L", length: Whole, position: 0},
				{letter: "A", length: Whole, position: 0},
				{letter: "H", length: Whole, position: 0},

			],
		],
		// String interlude.
		[
			[
				{letter: "M", length: DottedHalf, position: 0},
				{letter: "I", length: Quarter, position: 12}
			],
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "T", length: DottedHalf, position: 4}
			],
		],
		[
			[
				{letter: "S", length: Half, position: 0,},
				{length: Half, position: 8, isRest: true}],
			[
				{letter: "X", length: Whole, position: 0, isRemapKey: true},
				{letter: "F", length: Whole, position: 0, isRemapKey: true},
				{letter: "Y", length: Whole, position: 0, isRemapKey: true},
				{letter: "I", length: Whole, position: 0, isRemapKey: true},
				{letter: "P", length: Whole, position: 0, isRemapKey: true},
			],
		],
		[
			[
				{length: Half, position: 0, isRest: true},
				{length: Quarter, position: 8, isRest: true},
				// Bridge begins
				{letter: "S", length: Quarter, position: 12}
			],
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "G", length: Quarter, position: 4},
				{letter: "U", length: Quarter, position: 8},
				{letter: "E", length: Quarter, position: 12},
			],
		],
		[
			[
				{letter: "L", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: DottedEighth, position: 1, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: DottedEighth, position: 5, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: DottedEighth, position: 9, isRemapKey: true},
				{letter: "A", length: Quarter, position: 12, isRemapKey: true},
				{letter: "L", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "P", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "P", length: DottedEighth, position: 1, isRemapKey: true},
				{letter: "O", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "O", length: DottedEighth, position: 5, isRemapKey: true},
				{letter: "I", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "I", length: DottedEighth, position: 9, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 12, isRemapKey: true},
				{letter: "P", length: Quarter, position: 12, isRemapKey: true},
			],
		],
		[
			[{length: Whole, position: 0, isRest: true}],
			// Theme 2
			[
				{letter: "M", length: Eighth, position: 0, isRemapKey: true},
				{letter: "N", length: Eighth, position: 2, isRemapKey: true},
				{letter: "B", length: Eighth, position: 4, isRemapKey: true},
				{letter: "V", length: Eighth, position: 6, isRemapKey: true},
				{letter: "C", length: Eighth, position: 8, isRemapKey: true},
				{letter: "X", length: Eighth, position: 10, isRemapKey: true},
				{letter: "C", length: Eighth, position: 12, isRemapKey: true},
				{letter: "V", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "B", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Z", length: Eighth, position: 2, isRemapKey: true},
				{letter: "X", length: Eighth, position: 4, isRemapKey: true},
				{letter: "C", length: Eighth, position: 6, isRemapKey: true},
				{letter: "V", length: Eighth, position: 8, isRemapKey: true},
				{letter: "C", length: Eighth, position: 10, isRemapKey: true},
				{letter: "V", length: Eighth, position: 12, isRemapKey: true},
				{letter: "B", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "J", length: Eighth, position: 4, isRemapKey: true},
				{letter: "H", length: Eighth, position: 6, isRemapKey: true},
				{letter: "G", length: Eighth, position: 8, isRemapKey: true},
				{letter: "F", length: Eighth, position: 10, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "A", length: Eighth, position: 2, isRemapKey: true},
				{letter: "S", length: Eighth, position: 4, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "F", length: Eighth, position: 8, isRemapKey: true},
				{letter: "D", length: Eighth, position: 10, isRemapKey: true},
				{letter: "F", length: Eighth, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "U", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 2, isRemapKey: true},
				{letter: "T", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "E", length: Eighth, position: 8, isRemapKey: true},
				{letter: "W", length: Eighth, position: 10, isRemapKey: true},
				{letter: "E", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "T", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Q", length: Eighth, position: 2, isRemapKey: true},
				{letter: "W", length: Eighth, position: 4, isRemapKey: true},
				{letter: "E", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "E", length: Eighth, position: 10, isRemapKey: true},
				{letter: "R", length: Eighth, position: 12, isRemapKey: true},
				{letter: "T", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "Y", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Q", length: Eighth, position: 2, isRemapKey: true},
				{letter: "W", length: Eighth, position: 4, isRemapKey: true},
				{letter: "E", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "E", length: Eighth, position: 10, isRemapKey: true},
				{letter: "R", length: Eighth, position: 12, isRemapKey: true},
				{letter: "T", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "Y", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Q", length: Eighth, position: 2, isRemapKey: true},
				{letter: "W", length: Eighth, position: 4, isRemapKey: true},
				{letter: "E", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "E", length: Eighth, position: 10, isRemapKey: true},
				{letter: "R", length: Eighth, position: 12, isRemapKey: true},
				{letter: "T", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "Y", length: Eighth, position: 0, isRemapKey: true},
				{letter: "T", length: Eighth, position: 2, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 4, isRemapKey: true},
				{letter: "T", length: Eighth, position: 6, isRemapKey: true},
				{letter: "Q", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Y", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		// Descending arpeggios.
		[
			[
				{letter: "O", length: DottedHalf, position: 0, isRemapKey: true},
				{length: Eighth, position: 12, isRest: true},
				{letter: "O", length: Eighth, position: 14, isRemapKey: true}
			],
			[
				{letter: "K", length: DottedHalf, position: 0, isRemapKey: true},
				{length: Eighth, position: 12, isRest: true},
				{letter: "K", length: Eighth, position: 14, isRemapKey: true}
			]
		],
		[
			[
				{letter: "M", length: DottedHalf, position: 0, isRemapKey: true},
				{length: Eighth, position: 12, isRest: true},
				{letter: "Z", length: Eighth, position: 14, isRemapKey: true}
			],
			[
				{letter: "X", length: Quarter, position: 0, isRemapKey: true}, // 1 e and a
				{length: Sixteenth, position: 4, isRest: true}, // 2
				{letter: "Z", length: Sixteenth, position: 5, isRemapKey: true}, // e
				{letter: "Z", length: Sixteenth, position: 6, isRemapKey: true}, // and
				{letter: "Z", length: Sixteenth, position: 7, isRemapKey: true}, // a
				{letter: "C", length: Eighth, position: 8, isRemapKey: true}, // 3 e
				{letter: "X", length: Eighth, position: 10, isRemapKey: true}, // and a 4
				{length: Sixteenth, position: 12, isRest: true}, // 2
				{letter: "Z", length: Sixteenth, position: 13, isRemapKey: true}, // e
				{letter: "Z", length: Sixteenth, position: 14, isRemapKey: true}, // and
				{letter: "Z", length: Sixteenth, position: 15, isRemapKey: true}, // a
			],
		],
		[
			[
				{letter: "V", length: Eighth, position: 0, isRemapKey: true}, // 1 e
				{letter: "C", length: Eighth, position: 2, isRemapKey: true}, // and a 2
				{length: Sixteenth, position: 4, isRest: true}, // 2
				{letter: "Z", length: Sixteenth, position: 5, isRemapKey: true}, // e
				{letter: "Z", length: Sixteenth, position: 6, isRemapKey: true}, // and
				{letter: "Z", length: Sixteenth, position: 7, isRemapKey: true}, // a
				{letter: "B", length: Half, position: 8, isRemapKey: true}, // 3 e and a
			],
			[
				{length: Quarter, position: 0, isRest: true},
				{length: Sixteenth, position: 4, isRest: true},
				{letter: "Z", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "Z", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "Z", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "C", length: Eighth, position: 8, isRemapKey: true},
				{letter: "X", length: Eighth, position: 10, isRemapKey: true},
				{letter: "V", length: Eighth, position: 12, isRemapKey: true},
				{letter: "C", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "B", length: Eighth, position: 0, isRemapKey: true},
				{letter: "V", length: Eighth, position: 2, isRemapKey: true},
				{letter: "N", length: Eighth, position: 4, isRemapKey: true},
				{letter: "B", length: Eighth, position: 6, isRemapKey: true},
				{letter: "M", length: Eighth, position: 8, isRemapKey: true},
				{letter: "N", length: Eighth, position: 10, isRemapKey: true},
				{letter: "M", length: Eighth, position: 12, isRemapKey: true},
				{letter: "N", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "M", length: Eighth, position: 0, isRemapKey: true},
				{letter: "M", length: Eighth, position: 2, isRemapKey: true},
				{letter: "N", length: Eighth, position: 4, isRemapKey: true},
				{letter: "N", length: Eighth, position: 6, isRemapKey: true},
				{letter: "M", length: Eighth, position: 8, isRemapKey: true},
				{letter: "M", length: Eighth, position: 10, isRemapKey: true},
				{letter: "N", length: Eighth, position: 12, isRemapKey: true},
				{letter: "N", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			// strings drop out
			[				
				{letter: "M", length: Eighth, position: 0, isRemapKey: true},
				{letter: "M", length: Eighth, position: 2, isRemapKey: true},
				{letter: "N", length: Eighth, position: 4, isRemapKey: true},
				{letter: "M", length: Eighth, position: 6, isRemapKey: true},
				{letter: "N", length: Eighth, position: 8, isRemapKey: true},
				{letter: "M", length: Eighth, position: 10, isRemapKey: true},
				{letter: "N", length: Eighth, position: 12, isRemapKey: true},
				{letter: "M", length: Eighth, position: 14, isRemapKey: true},
			],
			// Grand downward arpeggio 
			[
				{letter: "M", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{length: Half, position: 8, isRest: true},
			], 
		],
		[
			[
				{length: Half, position: 0, isRest: true},
				{length: Quarter, position: 8, isRest: true},
				{letter: "N", length: Quarter, position: 12},
				{letter: "I", length: Quarter, position: 12},
				{letter: "C", length: Quarter, position: 12},
				{letter: "E", length: Quarter, position: 12},
			],
			[{length: Whole, position: 0, isRest: true}],
		],
		// Theme 1 returns but with more notes this time >:D
		[
			[
				{letter: "E", length: Eighth, position: 0, isRemapKey: true},
				{letter: "R", length: Eighth, position: 2, isRemapKey: true},
				{letter: "T", length: Eighth, position: 4, isRemapKey: true},
				{letter: "E", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "T", length: Eighth, position: 10, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "T", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 2, isRemapKey: true},
				{letter: "U", length: Eighth, position: 4, isRemapKey: true},
				{letter: "T", length: Eighth, position: 6, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 8, isRemapKey: true},
				{letter: "U", length: Eighth, position: 10, isRemapKey: true},
				{letter: "I", length: Eighth, position: 12, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			// Start coming down.
			[
				{letter: "U", length: Eighth, position: 0, isRemapKey: true},
				{letter: "T", length: Eighth, position: 2, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "T", length: Eighth, position: 8, isRemapKey: true},
				{letter: "E", length: Eighth, position: 10, isRemapKey: true},
				{letter: "R", length: Eighth, position: 12, isRemapKey: true},
				{letter: "W", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "L", length: Eighth, position: 0, isRemapKey: true},
				{letter: "J", length: Eighth, position: 2, isRemapKey: true},
				{letter: "K", length: Eighth, position: 4, isRemapKey: true},
				{letter: "H", length: Eighth, position: 6, isRemapKey: true},
				{letter: "J", length: Eighth, position: 8, isRemapKey: true},
				{letter: "G", length: Eighth, position: 10, isRemapKey: true},
				{letter: "M", length: Eighth, position: 12, isRemapKey: true},
				{letter: "B", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			// Not going down any more (transition)
			[
				{letter: "N", length: Eighth, position: 0, isRemapKey: true},
				{letter: "V", length: Eighth, position: 2, isRemapKey: true},
				{letter: "M", length: Eighth, position: 4, isRemapKey: true},
				{letter: "B", length: Eighth, position: 6, isRemapKey: true},
				{letter: "N", length: Eighth, position: 8, isRemapKey: true},
				{letter: "V", length: Eighth, position: 10, isRemapKey: true},
				{letter: "B", length: Eighth, position: 12, isRemapKey: true},
				{letter: "C", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "V", length: Half, position: 0, isRemapKey: true},
				// Go up again!
				{letter: "E", length: Eighth, position: 8, isRemapKey: true},
				{letter: "R", length: Eighth, position: 10, isRemapKey: true},
				{letter: "T", length: Eighth, position: 12, isRemapKey: true},
				{letter: "E", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "R", length: Eighth, position: 0, isRemapKey: true},
				{letter: "T", length: Eighth, position: 2, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "T", length: Eighth, position: 8, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 10, isRemapKey: true},
				{letter: "U", length: Eighth, position: 12, isRemapKey: true},
				{letter: "T", length: Eighth, position: 14, isRemapKey: true},
			],
			// Come down.
			[
				{letter: "Y", length: Eighth, position: 0, isRemapKey: true},
				{letter: "U", length: Eighth, position: 2, isRemapKey: true},
				{letter: "I", length: Eighth, position: 4, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 6, isRemapKey: true},
				{letter: "U", length: Eighth, position: 8, isRemapKey: true},
				{letter: "T", length: Eighth, position: 10, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "T", length: Eighth, position: 0, isRemapKey: true},
				{letter: "E", length: Eighth, position: 2, isRemapKey: true},
				{letter: "R", length: Eighth, position: 4, isRemapKey: true},
				{letter: "W", length: Eighth, position: 6, isRemapKey: true},
				{letter: "L", length: Eighth, position: 8, isRemapKey: true},
				{letter: "J", length: Eighth, position: 10, isRemapKey: true},
				{letter: "K", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "G", length: Eighth, position: 2, isRemapKey: true},
				{letter: "M", length: Eighth, position: 4, isRemapKey: true},
				{letter: "B", length: Eighth, position: 6, isRemapKey: true},
				{letter: "N", length: Eighth, position: 8, isRemapKey: true},
				{letter: "V", length: Eighth, position: 10, isRemapKey: true},
				{letter: "M", length: Eighth, position: 12, isRemapKey: true},
				{letter: "B", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "N", length: Eighth, position: 0, isRemapKey: true},
				{letter: "V", length: Eighth, position: 2, isRemapKey: true},
				{letter: "B", length: Eighth, position: 4, isRemapKey: true},
				{letter: "C", length: Eighth, position: 6, isRemapKey: true},
				{letter: "V", length: Eighth, position: 8, isRemapKey: true},
				{letter: "X", length: Eighth, position: 10, isRemapKey: true},
				{letter: "V", length: Eighth, position: 12, isRemapKey: true},
				{letter: "X", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "V", length: Eighth, position: 0, isRemapKey: true},
				{letter: "X", length: Eighth, position: 2, isRemapKey: true},
				{letter: "V", length: Quarter, position: 4, isRemapKey: true},
				{length: Half, position: 8, isRest: true},
			],
		],
		// Ugly hack to skip beats.
		[
			[
				{length: Whole, position: 0, isRest: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
			],
			[
				{length: Whole, position: 0, isRest: true},
				{
					length: Whole,
					position: 0,
					isRest: true,
					measureLength: 8
				}
			],
		],
		// Do a little bit of typing during the string interlude.
		[
			[{letter: "R", length: Whole, position: 0}],
			[{letter: "E", length: Whole, position: 0}]
		],
		[
			[
				{letter: "S", length: Half, position: 0},
				{letter: "T", length: Half, position: 8}
			],
			[{letter: "G", length: Whole, position: 0}]
		],
		[
			[
				{letter: "E", length: Half, position: 0},
				{letter: "T", length: Half, position: 8}
			],
			[
				{length: DottedHalf, position: 0, isRest: true},
				{length: Quarter, position: 8, isRest: true},
				{letter: "R", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{length: Half, position: 8, isRest: true}
			],
			[
				{letter: "D", length: Quarter, position: 0},
				{letter: "Y", length: Quarter, position: 4},
				{length: Quarter, position: 8, isRest: true},
				// Slow theme.
				{letter: "A", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			[
				{letter: "D", length: Quarter, position: 0, isRemapKey: true},
				{letter: "F", length: Quarter, position: 4, isRemapKey: true},
				{letter: "G", length: Quarter, position: 8, isRemapKey: true},
				{letter: "D", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "F", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 4, isRemapKey: true},
				{letter: "H", length: Quarter, position: 8, isRemapKey: true},
				{letter: "F", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			[
				{letter: "G", length: Quarter, position: 0, isRemapKey: true},
				{letter: "H", length: Quarter, position: 4, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{letter: "G", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "H", length: Quarter, position: 0, isRemapKey: true},
				{letter: "G", length: Quarter, position: 4, isRemapKey: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "S", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		// Get ready to do it faster.
		[
			[
				{letter: "G", length: DottedQuarter, position: 0, isRemapKey: true},
				{letter: "G", length: Eighth, position: 6, isRemapKey: true},
				{letter: "F", length: DottedQuarter, position: 8, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "D", length: DottedQuarter, position: 0, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "S", length: DottedQuarter, position: 8, isRemapKey: true},
				{letter: "S", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		// Now do it faster!!
		[
			[
				{letter: "D", length: Eighth, position: 0, isRemapKey: true},
				{letter: "F", length: Eighth, position: 2, isRemapKey: true},
				{letter: "G", length: Eighth, position: 4, isRemapKey: true},
				{letter: "D", length: Eighth, position: 6, isRemapKey: true},
				{letter: "F", length: Eighth, position: 8, isRemapKey: true},
				{letter: "G", length: Eighth, position: 10, isRemapKey: true},
				{letter: "H", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "G", length: Eighth, position: 0, isRemapKey: true},
				{letter: "H", length: Eighth, position: 2, isRemapKey: true},
				{letter: "J", length: Eighth, position: 4, isRemapKey: true},
				{letter: "G", length: Eighth, position: 6, isRemapKey: true},
				{letter: "H", length: Eighth, position: 8, isRemapKey: true},
				{letter: "G", length: Eighth, position: 10, isRemapKey: true},
				{letter: "F", length: Eighth, position: 12, isRemapKey: true},
				{letter: "D", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "G", length: Eighth, position: 0, isRemapKey: true},
				{letter: "F", length: Eighth, position: 2, isRemapKey: true},
				{letter: "D", length: Eighth, position: 4, isRemapKey: true},
				{letter: "S", length: Eighth, position: 6, isRemapKey: true},
				{letter: "F", length: Eighth, position: 8, isRemapKey: true},
				{letter: "D", length: Eighth, position: 10, isRemapKey: true},
				{letter: "S", length: Eighth, position: 12, isRemapKey: true},
				{letter: "F", length: Eighth, position: 14, isRemapKey: true},
			],
			// DO IT AGAIN ONE OCTAVE HIGHER!
			[
				{letter: "E", length: Eighth, position: 0, isRemapKey: true},
				{letter: "R", length: Eighth, position: 2, isRemapKey: true},
				{letter: "T", length: Eighth, position: 4, isRemapKey: true},
				{letter: "E", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "T", length: Eighth, position: 10, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "T", length: Eighth, position: 0, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 2, isRemapKey: true},
				{letter: "U", length: Eighth, position: 4, isRemapKey: true},
				{letter: "T", length: Eighth, position: 6, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 8, isRemapKey: true},
				{letter: "T", length: Eighth, position: 10, isRemapKey: true},
				{letter: "R", length: Eighth, position: 12, isRemapKey: true},
				{letter: "E", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "T", length: Eighth, position: 0, isRemapKey: true},
				{letter: "R", length: Eighth, position: 2, isRemapKey: true},
				{letter: "E", length: Eighth, position: 4, isRemapKey: true},
				{letter: "W", length: Eighth, position: 6, isRemapKey: true},
				{letter: "R", length: Eighth, position: 8, isRemapKey: true},
				{letter: "E", length: Eighth, position: 10, isRemapKey: true},
				{letter: "W", length: Eighth, position: 12, isRemapKey: true},
				{letter: "R", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "E", length: Quarter, position: 0, isRemapKey: true}, // 1 e and a
				{letter: "H", length: Sixteenth, position: 4, isRemapKey: true}, // 2
				{letter: "G", length: Sixteenth, position: 5, isRemapKey: true}, // e
				{letter: "H", length: Half, position: 6, isRemapKey: true}, // and a 3 e and a 4 e
				{length: Eighth, position: 14, isRest: true} // and a
			],
			[
				{letter: "E", length: Whole, position: 3},
				{letter: "N", length: Whole, position: 3},
				{letter: "D", length: Whole, position: 3},
			]
		],
		[
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true},],
		]
	]);
	private static var moonlightSonata:Song = new Song("moonlightSonata",
	"Moonlight Sonata", "Cranky",
	168, 690,
	"🌙It's so not, uh, hard!",
	AssetPaths.moonlightSonata__mp3, AssetPaths.moonlightSonata_slow__mp3, 
	[
		// main runs
		[
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true},],
		],
		[
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			],
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			]
		],
		[
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			],
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			]
		],
		[
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			],
			[
				{letter: "Z", length: Quarter, position: 0, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 4, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 8, isRemapKey: true},
				{letter: "Z", length: Quarter, position: 12, isRemapKey: true}
			]
		],
		// eighth notes
		[
			[
				{letter: "G", length: Quarter, position: 0},
				{letter: "E", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "T", length: Eighth, position: 8},
				{letter: "T", length: Eighth, position: 10},
				{letter: "R", length: Eighth, position: 12},
				{letter: "R", length: Eighth, position: 14}
			],
			[
				{letter: "E", length: Eighth, position: 0},
				{letter: "E", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "D", length: Eighth, position: 10},
				{letter: "Y", length: Eighth, position: 12},
				{letter: "Y", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "M", length: Quarter, position: 0},
				{letter: "E", length: Eighth, position: 4},
				{letter: "E", length: Eighth, position: 6},
				{letter: "L", length: Eighth, position: 8},
				{letter: "L", length: Eighth, position: 10},
				{letter: "O", length: Eighth, position: 12},
				{letter: "O", length: Eighth, position: 14}
			],
			[
				{letter: "D", length: Eighth, position: 0},
				{letter: "D", length: Eighth, position: 2},
				{letter: "I", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "S", length: Eighth, position: 12},
				{letter: "S", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "A", length: Eighth, position: 4},
				{letter: "H", length: Eighth, position: 6},
				{letter: "A", length: Eighth, position: 8},
				{letter: "H", length: Eighth, position: 10},
				{letter: "A", length: Eighth, position: 12},
				{letter: "H", length: Eighth, position: 14}
			],
			[
				{letter: "A", length: Quarter, position: 0},
				{letter: "T", length: DottedHalf, position: 6},
				{letter: "H", length: DottedHalf, position: 6},
				{letter: "U", length: DottedHalf, position: 6},
				{letter: "D", length: DottedHalf, position: 6}
			]
		],
		[
			[{length: Whole, position: 0, isRest: true},],
			[{length: Whole, position: 0, isRest: true},],
			[
				{length: Half, position: 0, isRest: true},
				{length: Eighth, position: 8, isRest: true},
				{letter: "S", length: Sixteenth, position: 10},
				{letter: "O", length: Sixteenth, position: 11},
				{letter: "S", length: Quarter, position: 12},
			]],
			// a beat is dropped here??
		// main runs
		[
			[
				{letter: "F", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 15, isRemapKey: true}
			],
			[
				{letter: "F", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true}
			]
		],
		[
			[
				{letter: "D", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 15, isRemapKey: true}
			],
			[
				{letter: "D", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true}
			]
		],
		[
			[
				{letter: "S", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 15, isRemapKey: true},
			],
			[
				{letter: "S", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 15, isRemapKey: true},
			]
		],
		// chill mode
		[
			[{letter: "S", length: Whole, position: 0}],
			[{letter: "L", length: Whole, position: 0}]
		],
		[
			[{letter: "O", length: Whole, position: 0}],
			[{letter: "W", length: Whole, position: 0}]
		],
		[
			[
				{letter: "D", length: DottedHalf, position: 0},
				{letter: "O", length: Quarter, position: 12}
			],
			[
				{letter: "W", length: DottedHalf, position: 0},
				{letter: "N", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "W", length: DottedHalf, position: 0},
				{letter: "H", length: Quarter, position: 12}
			],
			[
				{letter: "E", length: DottedHalf, position: 0},
				{letter: "W", length: Quarter, position: 12}
			]
		],
		[
			[
				{letter: "B", length: Half, position: 0},
				{letter: "A", length: Half, position: 8}
			],
			[
				{letter: "N", length: Sixteenth, position: 0},
				{letter: "A", length: Sixteenth, position: 1},
				{letter: "N", length: Sixteenth, position: 2},
				{letter: "A", length: Sixteenth, position: 3},
				{letter: "S", length: Quarter, position: 4},
				{length: Half, position: 8, isRest: true},
			]
		],
		[
			[
				{letter: "U", length: Half, position: 0},
				{letter: "K", length: Half, position: 8}
			],
			[
				{letter: "E", length: Sixteenth, position: 0},
				{letter: "L", length: Sixteenth, position: 1},
				{letter: "E", length: Sixteenth, position: 2},
				{letter: "L", length: Sixteenth, position: 3},
				{letter: "E", length: Quarter, position: 4},
				{length: Half, position: 8, isRest: true},
			]
		],
		// transition
		[
			[
				{letter: "D", length: Half, position: 0},
				{letter: "I", length: Half, position: 0},
				{letter: "M", length: Half, position: 0},
				{length: Half, position: 8, isRest: true},
			],
			[
				{letter: "Q", length: Eighth, position: 0, isRemapKey: true},
				{letter: "W", length: Eighth, position: 2, isRemapKey: true},
				{letter: "E", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "U", length: Eighth, position: 8, isRemapKey: true},
				{letter: "I", length: Eighth, position: 10, isRemapKey: true},
				{letter: "O", length: Eighth, position: 12, isRemapKey: true},
				{letter: "P", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "Q", length: Eighth, position: 0, isRemapKey: true},
				{letter: "W", length: Eighth, position: 2, isRemapKey: true},
				{letter: "E", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "U", length: Eighth, position: 8, isRemapKey: true},
				{letter: "I", length: Eighth, position: 10, isRemapKey: true},
				{letter: "O", length: Eighth, position: 12, isRemapKey: true},
				{letter: "P", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "Q", length: Eighth, position: 0, isRemapKey: true},
				{letter: "W", length: Eighth, position: 2, isRemapKey: true},
				{letter: "E", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "U", length: Eighth, position: 8, isRemapKey: true},
				{letter: "I", length: Eighth, position: 10, isRemapKey: true},
				{letter: "O", length: Eighth, position: 12, isRemapKey: true},
				{letter: "P", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		// transition 2
		[
			[
				{length: Quarter, position: 0, isRest: true},
				{letter: "N", length: DottedHalf, position: 4},
				{letter: "E", length: DottedHalf, position: 4},
				{letter: "T", length: DottedHalf, position: 4},
			],
			[				
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "S", length: Eighth, position: 2, isRemapKey: true},
				{letter: "D", length: Eighth, position: 4, isRemapKey: true},
				{letter: "F", length: Eighth, position: 6, isRemapKey: true},
				{letter: "H", length: Eighth, position: 8, isRemapKey: true},
				{letter: "J", length: Eighth, position: 10, isRemapKey: true},
				{letter: "K", length: Eighth, position: 12, isRemapKey: true},
				{letter: "L", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[				
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "S", length: Eighth, position: 2, isRemapKey: true},
				{letter: "D", length: Eighth, position: 4, isRemapKey: true},
				{letter: "F", length: Eighth, position: 6, isRemapKey: true},
				{letter: "H", length: Eighth, position: 8, isRemapKey: true},
				{letter: "J", length: Eighth, position: 10, isRemapKey: true},
				{letter: "K", length: Eighth, position: 12, isRemapKey: true},
				{letter: "L", length: Eighth, position: 14, isRemapKey: true},
			],
			[				
				{letter: "A", length: Eighth, position: 0, isRemapKey: true},
				{letter: "S", length: Eighth, position: 2, isRemapKey: true},
				{letter: "D", length: Eighth, position: 4, isRemapKey: true},
				{letter: "F", length: Eighth, position: 6, isRemapKey: true},
				{letter: "H", length: Eighth, position: 8, isRemapKey: true},
				{letter: "J", length: Eighth, position: 10, isRemapKey: true},
				{letter: "K", length: Eighth, position: 12, isRemapKey: true},
				{letter: "L", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "Q", length: Quarter, position: 0, isRemapKey: true},
				{letter: "U", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "A", length: Quarter, position: 8, isRemapKey: true},
				{letter: "J", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{letter: "R", length: Quarter, position: 0, isRemapKey: true},
				{letter: "O", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "F", length: Quarter, position: 8, isRemapKey: true},
				{letter: "L", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			]
		],
		// eighth notes
		[
			[
				{letter: "M", length: Quarter, position: 0},
				{letter: "I", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "D", length: Eighth, position: 10},
				{letter: "N", length: Eighth, position: 12},
				{letter: "N", length: Eighth, position: 14}
			],
			[
				{letter: "I", length: Eighth, position: 0},
				{letter: "I", length: Eighth, position: 2},
				{letter: "G", length: Eighth, position: 4},
				{letter: "G", length: Eighth, position: 6},
				{letter: "H", length: Eighth, position: 8},
				{letter: "H", length: Eighth, position: 10},
				{letter: "T", length: Eighth, position: 12},
				{letter: "T", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "E", length: Quarter, position: 0},
				{letter: "S", length: Eighth, position: 4},
				{letter: "S", length: Eighth, position: 6},
				{letter: "C", length: Eighth, position: 8},
				{letter: "C", length: Eighth, position: 10},
				{letter: "A", length: Eighth, position: 12},
				{letter: "A", length: Eighth, position: 14}
			],
			[
				{letter: "P", length: Eighth, position: 0},
				{letter: "P", length: Eighth, position: 2},
				{letter: "A", length: Eighth, position: 4},
				{letter: "A", length: Eighth, position: 6},
				{letter: "D", length: Eighth, position: 8},
				{letter: "D", length: Eighth, position: 10},
				{letter: "E", length: Eighth, position: 12},
				{letter: "E", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "K", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "H", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			]
		],
		// eighth notes again
		[
			[
				{letter: "S", length: Quarter, position: 0},
				{letter: "I", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "N", length: Eighth, position: 8},
				{letter: "N", length: Eighth, position: 10},
				{letter: "I", length: Eighth, position: 12},
				{letter: "I", length: Eighth, position: 14},
			],
			[
				{letter: "S", length: Eighth, position: 0},
				{letter: "S", length: Eighth, position: 2},
				{letter: "T", length: Eighth, position: 4},
				{letter: "T", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "R", length: Eighth, position: 12},
				{letter: "R", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "C", length: Quarter, position: 0},
				{letter: "R", length: Eighth, position: 4},
				{letter: "R", length: Eighth, position: 6},
				{letter: "E", length: Eighth, position: 8},
				{letter: "E", length: Eighth, position: 10},
				{letter: "A", length: Eighth, position: 12},
				{letter: "A", length: Eighth, position: 14}
			],
			[
				{letter: "T", length: Eighth, position: 0},
				{letter: "T", length: Eighth, position: 2},
				{letter: "I", length: Eighth, position: 4},
				{letter: "I", length: Eighth, position: 6},
				{letter: "O", length: Eighth, position: 8},
				{letter: "O", length: Eighth, position: 10},
				{letter: "N", length: Eighth, position: 12},
				{letter: "N", length: Eighth, position: 14}
			]
		],
		[
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "K", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "H", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			]
		],
		// transition
		[
			[
				{letter: "J", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "M", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			],
			[
				{letter: "N", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{letter: "B", length: Quarter, position: 8, isRemapKey: true},
				{length: Quarter, position: 12, isRest: true},
			]
		],
		[
			[
				{letter: "N", length: Quarter, position: 0, isRemapKey: true},
				{length: Quarter, position: 4, isRest: true},
				{length: Quarter, position: 8, isRest: true},
				{letter: "Q", length: Eighth, position: 12, isRemapKey: true},
				{letter: "W", length: Eighth, position: 14, isRemapKey: true},			],
			[
				{letter: "E", length: Eighth, position: 0, isRemapKey: true},
				{letter: "R", length: Eighth, position: 2, isRemapKey: true},
				{letter: "T", length: Eighth, position: 4, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 6, isRemapKey: true},
				{letter: "U", length: Eighth, position: 8, isRemapKey: true},
				{letter: "I", length: Eighth, position: 10, isRemapKey: true},
				{letter: "O", length: Eighth, position: 12, isRemapKey: true},
				{letter: "P", length: Eighth, position: 14, isRemapKey: true},
			]
		],
		// main runs
		[
			[
				{letter: "F", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 15, isRemapKey: true},
			],
			[
				{letter: "F", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "D", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 15, isRemapKey: true},
			],
			[
				{letter: "D", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true},
			]
		],
		[
			[
				{letter: "S", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true},
			],
			[
				{letter: "S", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Quarter, position: 12, isRemapKey: true},
				{letter: "G", length: Eighth, position: 14, isRemapKey: true},
				{letter: "H", length: Quarter, position: 14, isRemapKey: true},
			]
		],
		// chill mode
		[
			[{letter: "E", length: Whole, position: 0}],
			[{letter: "A", length: Whole, position: 0}]
		],
		[
			[{letter: "S", length: Whole, position: 0}],
			[{letter: "Y", length: Whole, position: 0}]
		],
		[
			[
				{letter: "L", length: Half, position: 0},
				{letter: "A", length: Half, position: 8}
			],
			[
				{letter: "S", length: Half, position: 0},
				{letter: "T", length: Half, position: 8}
			]
		],
		[
			[
				{letter: "R", length: Half, position: 0},
				{letter: "E", length: Quarter, position: 8},
				{letter: "F", length: Quarter, position: 12},
			],
			[
				{letter: "R", length: Quarter, position: 0},
				{letter: "A", length: Quarter, position: 4},
				{letter: "I", length: Quarter, position: 8},
				{letter: "N", length: Quarter, position: 12}
			]
		],
		// end
		[
			[
				{letter: "S", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "S", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "L", length: Sixteenth, position: 15, isRemapKey: true},
			],
			[
				{letter: "D", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "D", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "K", length: Sixteenth, position: 15, isRemapKey: true},
			],
		],
		[
			[
				{letter: "F", length: Sixteenth, position: 0, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 1, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 2, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 3, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 4, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 5, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 6, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 7, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 8, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 9, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 10, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 11, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 12, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 13, isRemapKey: true},
				{letter: "F", length: Sixteenth, position: 14, isRemapKey: true},
				{letter: "J", length: Sixteenth, position: 15, isRemapKey: true},

			],
			[
				{letter: "G", length: Half, position: 0, isRemapKey: true},
				{letter: "H", length: Half, position: 0, isRemapKey: true},
				{letter: "T", length: Half, position: 8, isRemapKey: true},
				{letter: "Y", length: Half, position: 8, isRemapKey: true},
			]
		],
		[
			[
				{letter: "F", length: Whole, position: 0},
				{letter: "I", length: Whole, position: 0},
				{letter: "N", length: Whole, position: 0},
			],
			[{length: Whole, position: 0, isRest: true},],
		]
	]);

	private static var testSong:Song = new Song("test",
	"Test Song", "anon",
	90, 100,
	"You passed the test!",
	AssetPaths.trapBach__mp3, AssetPaths.trapBach_slow__mp3,  
	[
		[
			[
				{letter: "M", length: Quarter, position: 0, isRest: true},
				{letter: "M", length: Quarter, position: 4, isRemapKey: true},
				{letter: "N", length: Quarter, position: 8, isRemapKey: true},
				{letter: "M", length: Quarter, position: 12, isRemapKey: true},
			],
			[
				{letter: "M", length: Quarter, position: 0, isRest: true},
				{letter: "M", length: Quarter, position: 4, isRemapKey: true},
				{letter: "N", length: Quarter, position: 8, isRemapKey: true},
				{letter: "M", length: Quarter, position: 12, isRemapKey: true},
			]
		],
		[
			[
				{letter: "Q", length: Eighth, position: 0, isRemapKey: true},
				{letter: "W", length: Eighth, position: 2, isRemapKey: true},
				{letter: "E", length: Eighth, position: 4, isRemapKey: true},
				{letter: "R", length: Eighth, position: 6, isRemapKey: true},
				{letter: "T", length: Eighth, position: 8, isRemapKey: true},
				{letter: "Y", length: Eighth, position: 10, isRemapKey: true},
				{letter: "U", length: Eighth, position: 12, isRemapKey: true},
				{letter: "I", length: Eighth, position: 14, isRemapKey: true},
			],
			[
				{letter: "O", length: Eighth, position: 0, isRemapKey: true},
				{letter: "P", length: Eighth, position: 2, isRemapKey: true},
				{letter: "A", length: Eighth, position: 4, isRemapKey: true},
				{letter: "S", length: Eighth, position: 6, isRemapKey: true},
				{letter: "D", length: Eighth, position: 8, isRemapKey: true},
				{letter: "F", length: Eighth, position: 10, isRemapKey: true},
				{letter: "G", length: Eighth, position: 12, isRemapKey: true},
				{letter: "H", length: Eighth, position: 14, isRemapKey: true},
			],
		],
		[
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "K", length: Eighth, position: 1, isRemapKey: true},
				{letter: "L", length: Eighth, position: 2, isRemapKey: true},
				{letter: "Z", length: Eighth, position: 3, isRemapKey: true},
				{letter: "X", length: Eighth, position: 4, isRemapKey: true},
				{letter: "C", length: Eighth, position: 5, isRemapKey: true},
				{letter: "V", length: Eighth, position: 6, isRemapKey: true},
				{letter: "B", length: Eighth, position: 7, isRemapKey: true},
				{letter: "N", length: Eighth, position: 8, isRemapKey: true},
				{letter: "M", length: Eighth, position: 9, isRemapKey: true},
				{letter: "N", length: Eighth, position: 10, isRemapKey: true},
				{letter: "B", length: Eighth, position: 11, isRemapKey: true},
				{letter: "V", length: Eighth, position: 12, isRemapKey: true},
				{letter: "C", length: Eighth, position: 13, isRemapKey: true},
				{letter: "X", length: Eighth, position: 14, isRemapKey: true},
				{letter: "Z", length: Eighth, position: 15, isRemapKey: true},
			],
			[
				{letter: "J", length: Eighth, position: 0, isRemapKey: true},
				{letter: "K", length: Eighth, position: 1, isRemapKey: true},
				{letter: "L", length: Eighth, position: 2, isRemapKey: true},
				{letter: "Z", length: Eighth, position: 3, isRemapKey: true},
				{letter: "X", length: Eighth, position: 4, isRemapKey: true},
				{letter: "C", length: Eighth, position: 5, isRemapKey: true},
				{letter: "V", length: Eighth, position: 6, isRemapKey: true},
				{letter: "B", length: Eighth, position: 7, isRemapKey: true},
				{letter: "N", length: Eighth, position: 8, isRemapKey: true},
				{letter: "M", length: Eighth, position: 9, isRemapKey: true},
				{letter: "N", length: Eighth, position: 10, isRemapKey: true},
				{letter: "B", length: Eighth, position: 11, isRemapKey: true},
				{letter: "V", length: Eighth, position: 12, isRemapKey: true},
				{letter: "C", length: Eighth, position: 13, isRemapKey: true},
				{letter: "X", length: Eighth, position: 14, isRemapKey: true},
				{letter: "Z", length: Eighth, position: 15, isRemapKey: true},
			],
		],
		[
			[
				{
					letter: "F",
					length: Whole,
					position: 0,
					isRest: true
				},
			],
			[
				{
					letter: "D",
					length: Half,
					position: 0,
					isRest: true
				},
				{
					letter: "O",
					length: Quarter,
					position: 8,
					isRest: true
				},
				{
					letter: "A",
					length: Eighth,
					position: 10,
					isRest: true
				},
				{
					letter: "G",
					length: Sixteenth,
					position: 12,
					isRest: true
				},
				{
					letter: "G",
					length: Sixteenth,
					position: 13,
					isRest: true
				}
			]
		],
		[[], []] // 2 measures rest
	]);

	// List the songs to include in the main menu
	// This specifies the order of the songs
	public static var songList:Array<Song> = [trapBach, moonlightSonata, toccataAndFugue, orpheus];
	
	public static function getSong(fname:String) {
		for (s in songList) {
			if (s.fname == fname)
				return s;
		}
		
		return testSong;
	}
}
