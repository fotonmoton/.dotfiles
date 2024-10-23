#!/usr/bin/fish

set -q KS_WIDTH || set KS_WIDTH "50c"
set -q KS_HEIGHT || set KS_HEIGHT "7c"

kitty --class "kitty_shell" -o remember_window_size=no -o initial_window_height=$KS_HEIGHT -o initial_window_width=$KS_WIDTH $argv
