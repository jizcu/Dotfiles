#!/bin/sh

#	Runs when menu button in polybar is clicked.
#	Script opens mimfetch from ~/Documents folder 
#	in new terminal window.
#	If process is already open, it is closed.

# check if mimfetch is running

if [ `xdotool search --class mimfetch` > /dev/null ] 
then
# get process id of mimfetch window
# and kill process
	pid=`ps -ax | grep mimfetch | grep -v "grep" | awk '{print $1}'`
	kill -TERM $pid
# otherwise, open mimfetch
# class assigned for bspwm window size
else
	`kitty --hold --class mimfetch --name mimfetch -e ~/Documents/Code/Mimfetch/mimfetch.sh -b -r -c`
fi
