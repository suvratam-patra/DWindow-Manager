#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

run "nm-applet"
# run "gnome-control-center"
# run "pamac-tray"
# run "flameshot"
# run "variety"
run "barrier"
# run "xfce4-power-manager"
run "blueman-applet"
# run "blueberry-tray"
# run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
# run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom --experimental-backends -b --config ~/.config/dwm/picom.conf &
run "numlockx on"
run "volumeicon"
sxhkd -c ~/.config/dwm/sxhkd/sxhkdrc &
#xargs xwallpaper --stretch < ~/.config/dwm/Wallpaper &
#run "picom"
run ~/.config/slstatus/slstatus &

while true
do
  feh --randomize --bg-fill ~/.config/dwm/Wallpaper/*
sleep 60m
done

#run ~/.config/dwm/slstatus/slstatus & 
#run "nitrogen --restore"
#run "conky -c $HOME/.config/dwm/system-overview"
#you can set wallpapers in themes as well
#wallpaper for other Arch based systems
#feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &
#run applications from startup

#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"
