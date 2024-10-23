#!/usr/bin/fish

set lock /tmp/window_switcher_lock

test -e $lock && exit

touch $lock

set windows (swaymsg -t get_tree -r)
set query '.. | select(.app_id?) | (.pid|tostring) + " " + .app_id + " " + .name'
set fzf_options --with-nth 2.. 
set id (echo $windows | jq -r $query | fzf $fzf_options | awk '{print $1}')

swaymsg "[pid=$id]" focus

rm $lock
