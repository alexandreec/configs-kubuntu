#!/bin/bash

# slimblade
slimblade_id=$(xinput | grep "Kensington Kensington Slimblade Trackball" | awk {'print substr($7,4,2)'})
echo $slimblade_id > ~/slimblade_id

# left
#xinput set-button-map $slimblade_id 8 3 1 5 4 6 7 2 9 10 11 12

# right
#xinput set-button-map $slimblade_id 1 2 8 4 5 6 7 3 9 10 11 12
xinput set-button-map $slimblade_id 9 2 1 4 5 6 7 3 8 10 11 12
xinput set-prop "Kensington Kensington Slimblade Trackball" "Evdev Scrolling Distance" -1 0.1 1
xinput set-prop "Kensington Kensington Slimblade Trackball" "Device Accel Profile" 0.2
