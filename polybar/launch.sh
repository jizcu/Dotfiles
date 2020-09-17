#!/usr/bin/env sh

killall polybar

polybar bordersystem -c ~/.config/polybar/borders/system.ini &
polybar system -c ~/.config/polybar/system.ini &

polybar datetime -c ~/.config/polybar/date.ini &
polybar borderdate -c ~/.config/polybar/borders/date.ini &

polybar menu -c ~/.config/polybar/menu.ini &
polybar bordermenu -c ~/.config/polybar/borders/menu.ini &
