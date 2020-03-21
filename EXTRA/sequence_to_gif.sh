#!/bin/zsh

#
# Documentation about the "convert" command:
#   https://imagemagick.org/script/convert.php
#
convert *.png  -delay 10 -loop 0 -coalesce -colors 16 -layers Optimize output.gif

#convert chickens.gif -coalesce -colors 16 -layers Optimize output.gif
