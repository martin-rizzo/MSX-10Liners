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

```
ALIENS10.BAS   BASIC source code in ASCII.
ALIENS10.GIF   Game screenshot.
ALIENS10.DSK   720Kb disk image for use with the emulator.
ALIENS10.WAV   Audio file for use on real MSX hardware.
README.TXT     Text file with a brief description of the game.
README.MD      Full documentation in Markdown format.
README.PDF     Full documentation in PDF.
```


How to play
-----------

You must prevent deadly aliens from entering the cockpit. Aim the targeting crosshair at their heads and fire without mercy. Remember, only headshots can stop them!.

- Use arrow keys to control the crosshair.
- Press spacebar to shot.
- The game is over when some alien reaches the left side of the screen.
- Complete the three levels and you win!.

![ALIENS10](ALIENS10.GIF "Aliens10 Game")


How to load
-----------

< description of how to load the game into the emulator >

< description of how to load the game on real hardware >

Also, you can play the game using the following online emulator:   
http://webmsx.org/?MACHINE=MSX1&DISK=http://???.zip


Code explanation
----------------

### Variables & constants reference

```
     N   = name table address          <constant>
     K   =  32                         <constant>
     O   =  29 (char used as backgnd)  <constant>
    Q(n) = crosshair movement table    <constant>
     F   = alien min address           <constant>
    M(n) = alien movement table        <constant>
    S(n) = alien start pos/address     <constant>
    A(n) = alien current pos/address
     T   = temporary var
    I,J  = temporary var (loops)
     L   = game level [1-3]
     R   = game difficulty [?-?]
     P   = player points
     H   = headshot countdown (0 -> go to next level)
    X,Y  = crosshair coordinate
    U,V  = explosion coordinate
     W   = explosion distance
     Z   = explosion color
     A$  = ending message
```






---

2020 - Martin Rizzo <martinrizzo@gmail.com>

