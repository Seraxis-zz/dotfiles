#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# find if the Thinkpad dock is plugged in

if (lsusb | grep -qo 17ef:100a) ; then
    xrandr --output LVDS1 --off
    xrandr --output HDMI3 --auto
    setxkbmap -option ctrl:nocaps
else
    xrandr --output LDVS1 --auto
    xrandr --output HDMI3 --off
    setxkbmap -option ctrl:nocaps
fi

urxvt &

exec i3
