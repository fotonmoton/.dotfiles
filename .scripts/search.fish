#!/bin/env fish


set search (read -P ">")

if test "$search" != "" 
	firefox --new-tab "https://www.google.de/search?q=$search" && swaymsg [app_id="org.mozilla.firefox"] focus
end

