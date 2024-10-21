#!/bin/env fish

set search (echo "" | rofi -dmenu -p "" -theme-str 'listview {lines: 0;}') 

if test "$search" != "" 
	firefox --new-tab "https://www.google.de/search?q=$search" && swaymsg [app_id="org.mozilla.firefox"] focus
end

