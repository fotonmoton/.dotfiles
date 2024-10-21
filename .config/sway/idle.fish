#!/bin/env fish

# This will lock your screen after 300 seconds of inactivity, then turn off
# your displays after another 300 seconds, and turn your screens back on when
# resumed. It will also lock your screen before your computer goes to sleep.

set lock 'swaylock -f -c 000000'
set off 'swaymsg "output * power off"'
set resume 'swaymsg "output * power on"'
set before_sleep 'swaylock -f -c 000000'

exec swayidle -w    \
  timeout 300 $lock \
  timeout 600 $off  \
  resume $resume    \
  before-sleep $before_sleep
