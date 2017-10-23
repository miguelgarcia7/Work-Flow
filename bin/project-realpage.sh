#!/bin/bash -e
clear
osascript &>/dev/null <<EOF
    tell application "iTerm"
        activate
        tell current window to set tb to create tab with default profile
        tell current session of current window to write text "cd ~/code/realpage.com"
        tell current session of current window to write text "gs"

        tell current window to set tb to create tab with default profile
        tell current session of current window to write text "cd ~/code/realpage.com/resources/themes/realpage"
        tell current session of current window to write text "gulp watch"

    end tell
EOF

cd ~/code/realpage.com
subl .
