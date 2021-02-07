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

# MAP F6 TO THE MSX "INSERT" KEY
MAP_F6_TO_INSERT='
bind F6         "keymatrixdown 8 0x04";
bind F6,release "keymatrixup   8 0x04";
'

# RUN OPENMSX EMULATOR
openmsx -machine "$MSX_TYPE" -diska "$DISK_A" -command "$HIGH_FRMERATE" -command "$SCALE_X2"  -command "$MAP_F6_TO_INSERT"





