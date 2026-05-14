#!/bin/bash

open -a "Prime Video"

sleep 5

osascript <<'EOF'
tell application "System Events"
	tell process "Prime Video"
		set frontmost to true
	end tell

	delay 1

	keystroke "f" using command down
	delay 1

	keystroke "Two and a Half Men"
	delay 1

	key code 36
	delay 4

	key code 36
end tell
EOF
