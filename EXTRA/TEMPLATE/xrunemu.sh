#!/bin/bash

# GET THE DIR WHERE THIS SCRIPT IS RUNNING
THIS_SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SCRIPT_DIR=$(cd "$THIS_SCRIPT_DIR" && pwd)

# USING MSX2 (it supports 80 columns)
MSX_TYPE="msx2"

# USING THE "DIR-AS-DISK" FEATURE
DISK_A="$THIS_SCRIPT_DIR"

# DOUBLE SIZE SCREEN
SCALE_X2='
set scale_factor 2;
'

# HIGH FRAMERATE
HIGH_FRAMERATE='
set renderer SDL;
set scale_algorithm simple;
set maxframeskip 0;
set blur 0;
set accuracy screen;
'

# MAP CTRL+TAB TO THE MSX "TAB" KEY
MAP_CTRLTAB_TO_TAB='
bind CTRL+TAB         "keymatrixdown 7 0x08";
bind CTRL+TAB,release "keymatrixup   7 0x08";
'

# MAP TAB TO THE MSX "CAPS" KEY
MAP_TAB_TO_CAPS='
bind TAB         "keymatrixdown 6 0x08";
bind TAB,release "keymatrixup   6 0x08";
'

# MAP PAGEUP TO THE MSX "INSERT" KEY
MAP_PAGEUP_TO_INSERT='
bind PAGEUP         "keymatrixdown 8 0x04";
bind PAGEUP,release "keymatrixup   8 0x04";
'

# MAP END TO THE MSX "STOP" KEY
MAP_END_TO_STOP='
bind END         "keymatrixdown 7 0x10";
bind END,release "keymatrixup   7 0x10";
'

# MAP CTRL+END TO THE MSX "CTRL+STOP" KEY COMBINATION
MAP_CTRLEND_TO_CTRLSTOP='
bind CTRL+END         "keymatrixdown 6 0x02 ; keymatrixdown 7 0x10";
bind CTRL+END,release "keymatrixup   7 0x10 ; keymatrixup   6 0x02";
'

# MAP PAGEDOWN TO THE MSX "SELECT" KEY
MAP_PAGEDOWN_TO_SELECT='
bind PAGEDOWN         "keymatrixdown 7 0x40";
bind PAGEDOWN,release "keymatrixup   7 0x40";
'

# == RUN OPENMSX EMULATOR ==
COMMANDS="
  $HIGH_FRAMERATE
  $SCALE_X2
  $MAP_CTRLTAB_TO_TAB
  $MAP_TAB_TO_CAPS
  $MAP_PAGEUP_TO_INSERT
  $MAP_END_TO_STOP
  $MAP_CTRLEND_TO_CTRLSTOP
  $MAP_PAGEDOWN_TO_SELECT
"
openmsx -machine "$MSX_TYPE" -diska "$DISK_A" -command "$COMMANDS"



