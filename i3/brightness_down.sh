#!/bin/bash
CAT="$(which cat)"
current_brightness=`$CAT /sys/class/backlight/intel_backlight/brightness`
new_brightness=$(($current_brightness-20))
echo $new_brightness > /sys/class/backlight/intel_backlight/brightness
