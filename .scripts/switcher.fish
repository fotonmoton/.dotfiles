#!/usr/bin/fish

swaymsg -t get_tree -r | jq -r '.. | select(.app_id?) | (.pid|tostring) + " " + .app_id + " " + .name' | fzf --with-nth 2.. | awk '{print $1}' | xargs printf "[pid=%d] focus" | xargs swaymsg

