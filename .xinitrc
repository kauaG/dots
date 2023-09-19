#!/bin/sh

xwallpaper --zoom ~/img/wall/wallblack.jpg
DISPLAY=":0" picom -b --backend glx --vsync
slstatus &
exec dwm

. /etc/X11/Xsession
