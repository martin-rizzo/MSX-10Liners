namespace eval take_screenshot_sequence {

	#---------------------------------------------------------------------------
	# HELP FOR BOTH SCRIPTS

	set help_text \
	{Take multiple screenshots in sequence

	Usage:
	 take_screenshot_sequence     <seconds> [<framerate>] [<base>]
	 take_raw_screenshot_sequence <seconds> [<framerate>] [<base>]
	}
	set_help_text take_screenshot_sequence     $help_text
	set_help_text take_raw_screenshot_sequence $help_text


	#---------------------------------------------------------------------------
	# PUBLIC FUNCTIONS

	proc take_screenshot_sequence {seconds {framerate 10} {base ""}} {
		start $seconds $framerate "" $base
	}

	proc take_raw_screenshot_sequence {seconds {framerate 10} {base ""}} {
		start $seconds $framerate "-raw" $base
	}

	namespace export take_screenshot_sequence
	namespace export take_raw_screenshot_sequence


	#---------------------------------------------------------------------------
	# PRIVATE FUNCTIONS

	proc start {seconds framerate params base} {
		if { $seconds<1    } { set seconds   1  }
		if { $framerate<1  } { set framerate 1  }
		if { $framerate>60 } { set framerate 60 }
		set totalcount [expr $seconds * 60]
		set skip       [expr 60 / $framerate]
		capture 1 $totalcount $skip $params $base
	}

	proc capture {current totalcount skip params base} {
		if {$current <= $totalcount} {
			if { ($current % $skip) == 1 } {
				if {$base eq ""} {
					screenshot $params 
				} else {
					screenshot $params -prefix $base
				}
			}
			set next [expr $current+1]
			after frame "::take_screenshot_sequence::capture $next $totalcount $skip \"$params\" \"$base\""
		}
	}


} ;# namespace take_screenshot_sequence

namespace import take_screenshot_sequence::*

