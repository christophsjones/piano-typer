# Piano Typer

Source code for the game [Piano Typer](https://2021.galacticpuzzlehunt.com/puzzle/piano-typer), part of the Galactic Puzzle Hunt 2022. Type the words to the beat of classical remixes!

Made by Amon Ge and Chris Jones, with implementation help by Jenna Himawan and Esther Wang, and art by [sarawaleed](https://www.fiverr.com/sarawaleed).

## Installation

Follow the [instructions for HaxeFlixel](https://haxeflixel.com/documentation/setup/)

After that, running `lime test html5` from the root directory will run the game locally on port 3000.

The "export" directory contains everything needed to host the game on a server.

## Comments

To make or edit a song, check out the song format in SongData.hx. This is the only file that needs to be modified. The beatmap-convert.py script can also be used to write songs in a simpler format. (Note that the existing main menu UI has space for a fifth song but not a sixth.)

Every song needs a slowed-down version of the audio for Practice Mode, with length 1.25 times the original length. [Audacity](https://www.audacityteam.org/) can be used to create a high-quality slowed down audio file. In my version of Audacity, it's under "Effect > Change Tempo..." and set "Percent Change" to "-20.00".

In order to get rid of all spoilers in the source code, the rewards for completing a song have been updated in this repository. [Go play the puzzle](https://2021.galacticpuzzlehunt.com/puzzle/piano-typer) if you want to get the *real* rewards!

There are no plans to update this code.
