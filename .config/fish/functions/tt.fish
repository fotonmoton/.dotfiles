function tt --wraps='setfont -d; echo 3 > /sys/class/graphics/fbcon/rotate_all' --description 'alias tt=setfont -d; echo 3 > /sys/class/graphics/fbcon/rotate_all'
  setfont -d; echo 3 > /sys/class/graphics/fbcon/rotate_all $argv
        
end
