#!/usr/bin/fish

set action (echo -e "hibernate\nreboot\npoweroff\nsuspend\nlock" | rofi -dmenu -p "to:")  

if test "$action" = "lock"
	swaylock
	exit
end

if test "$action" != ""
	systemctl $action
end
