#!/bin/bash

#First lisgd instance
lisgd -r 15 -d "/dev/input/event4" -m 400 \
        `#Right-to-Left on the bottom swipe to switch windows forward`\
        -g "1,RL,B,*,R,setsid -f wtype -M alt -P tab -m alt -p tab" \
        `#Left-to-Right on the bottom swipe to switch windows backwards`\
        -g "1,LR,B,*,R,setsid -f wtype -M alt -M shift -P tab -m alt -m shift -p tab" \
