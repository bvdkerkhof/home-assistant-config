#!/bin/bash
hp-info 2>&1 | grep -oP "(?<=agent1-level\s{18})(.*\S)" | tr "\n" " " > /home/pi/ink_color.txt
hp-info 2>&1 | grep -oP "(?<=agent2-level\s{18})(.*\S)" | tr "\n" " " > /home/pi/ink_black.txt
#END#!/bin/bash
