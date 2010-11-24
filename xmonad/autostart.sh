#!/bin/sh

# gnome stuff
gnome-screensaver &
#gnome-keyring-daemon --start --components=pkcs11
#gnome-keyring-daemon --start --components=ssh
#gnome-keyring-daemon --start --components=secrets
#gnome-keyring-daemon -s -c &

#feh --bg-scale ~/Downloads/118-e.jpg &
#feh --bg-tile ~/.xmonad/background.png &

#export OOO_FORCE_DESKTOP=gnome &
#xrandr --output default --mode 1440x900 --pos 0x0 &

#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 15 --height 12 --transparent true --tint 0x000000 &

stalonetray &
nitrogen --restore &

#exec xcompmgr &

if [[ $(hostname) == "goudes" ]]; then
    gnome-settings-daemon &
    gnome-power-manager &
    #nm-applet --sm-disable &
    wicd-client &
    alunn &
    mail-notification &
    volumeicon &
    dropboxd &
    gnome-agenda &
elif [[ $(hostname) == "fireball" ]]; then
    /usr/libexec/gnome-settings-daemon &
    gpk-update-icon &
    numlockx &
    dropbox start &
fi

