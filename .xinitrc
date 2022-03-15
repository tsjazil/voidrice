#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

feh --bg-fill ~/wall.jpg &
xrandr --output Virtual-1 --mode 1366x768 & 
picom &
exec bspwm
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
