#!/bin/zsh

#
# Documentation of CONVERT command:
#   https://imagemagick.org/script/convert.php
#

convert *.png -gravity Center -crop 280x210+0+0 +repage -delay 10 -loop 0 -coalesce -colors 16 -layers Optimize output.gif


