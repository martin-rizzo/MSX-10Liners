Aliens10 (BASIC 10-liner)
=========================

**Aliens10** is a game written for the MSX platform in just 10 lines of BASIC code.

* `Title...` : ALIENS10
* `Platform` : MSX
* `Author..` : Martin Rizzo
* `Language` : MSX BASIC 1.0
* `Category` : PUR-120

Files
-----

    ALIENS10.BAS   BASIC source code in ASCII.
    ALIENS10.GIF   Game screenshot.
    ALIENS10.DSK   720Kb disk image for use with the emulator.
    ALIENS10.ZIP   ZIP containing a WAV audio file for use on real MSX.
    README.HTM     Full documentation in HTML.
    README.MD      Full documentation in Markdown format.
    README.TXT     Text file with a brief description of the game.


Gameplay
--------

You must prevent deadly aliens from entering the cockpit. Aim the targeting crosshair at their heads and fire without mercy. Remember, only headshots can stop them!.

 - Use arrow keys to control the crosshair.
 - Press spacebar to shot.
 - The game is over when some alien reaches the left side of the screen.
 - Complete the three levels and you win!.

<img src="ALIENS10.GIF" alt="ALIENS10" width="420"/>


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
     K   :  32                         <constant>
     O   :  29 (char used as backgnd)  <constant>
    Q(n) : crosshair movement table    <constant>
     F   : alien min address           <constant>
    M(n) : alien movement table        <constant>
    S(n) : alien start pos/address     <constant>
    A(n) : alien current pos/address
     T   : temporary var
    I,J  : temporary var (loops)
     L   : game level [1-3]
     R   : game difficulty [7-21]
     H   : headshot countdown (when 0 -> go to next level)
     P   : player points
     C   : 51->load graph of aliens | 32->skip
    X,Y  : crosshair coordinate
    U,V  : explosion coordinate
     W   : explosion distance
     Z   : explosion color
     A$  : ending message
```

### Alien chararacter number and color

``` 
   char 10xxxx00 = HEAD
   char 10xxxx01 = legs
   char 10xxxx10 = dead body

   ALIEN-INDEX HEAD-CHAR COL-ADDRESS  COL
        0        128         16       &H21
        1        128+4       16       &H21
        2        128+8       17       &H31
        3        128+12      17       &H31
        n        128+n*4    16+n/2    ....
```





---

2020 - Martin Rizzo <martinrizzo@gmail.com>

