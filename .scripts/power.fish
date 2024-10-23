#!/usr/bin/fish

set options "hibernate\nreboot\npoweroff\nsuspend\nlock"

set action (echo -e $options | fzf)  

if test "$action" = "lock"
	swaylock
	exit
end

if test "$action" != ""
	systemctl $action
end
