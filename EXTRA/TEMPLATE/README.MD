{ Name } (BASIC 10-liner)
=========================

**{ Name }** is a game written for the MSX platform in just 10 lines of BASIC code.

* `Title...` : { Name }
* `Platform` : MSX
* `Author..` : Martin Rizzo
* `Language` : MSX BASIC 1.0
* `Category` : PUR-??

Files
-----

    { NAME }.BAS   BASIC source code in ASCII.
    { NAME }.GIF   Game screenshot.
    { NAME }.DSK   720Kb disk image for use with the emulator.
    { NAME }.ZIP   ZIP containing a WAV audio file for use on real MSX.
    README.HTM     Full documentation in HTML.
    README.MD      Full documentation in Markdown format.
    README.TXT     Text file with a brief description of the game.


Gameplay
--------

You must prevent deadly aliens from entering the cockpit. Aim the targeting crosshair at their heads and fire without mercy. Remember, only headshots can stop them!.

 - Use arrow keys to control the ...
 - Press spacebar to launch a ...
 - The game is over if/when ...
 - Do ... and you win!.

<img src="NAME.GIF" alt="NAME" width="420"/>


How to Run the Game
-------------------

### Loading the game in blueMSX emulator

  1. Download blueMSX FULL v2.8.2 (or above) from some of these links:
      * [blueMSX home page    ]( http://www.bluemsx.com/ )
      * [blueMSX download page]( http://bluemsx.msxblue.com/download.html )
  2. Install the emulator following the setup wizard.
  3. Start blueMSX
  4. Select `"File > Disk Drive A > Insert"`
  5. Select the provided .DSK file (the disk image)
  6. Select `"Emulation > Run"` and enjoy the game!

### Loading the game in real hardware

  1. Extract the provided ZIP file containing the WAV audio file
  2. Copy the WAV file to some audio player (smartphone, table, notebook, PC, ...)
  3. Connect the EAR cable from the audio player to your MSX
  4. Type `CLOAD` on your MSX
  5. Start the playback of the WAV file
  6. When the load is complete, type `RUN` and enjoy the game!


Source Code
-----------

![Code](_i_/code.gif)


Some Code References
--------------------

### Variables & constants

```
     N   : name table address          <constant>
```

### Chararacter number and color

``` 
   char 10xxxx00 = PLAYER BODY

```





---

2021 - Martin Rizzo <martinrizzo@gmail.com>

