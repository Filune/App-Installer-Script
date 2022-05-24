#!/bin/bash
nativeprogs=("vlc" "signal-desktop" "kolourpaint" "gimp" "lutris" "pycharm-community-edition" "virtualbox" "libreoffice-fresh" "ksnip" "discord" "thunderbird" "timeshift" "syncthing" "yubioath-desktop" "kdenlive" "obs-studio")
flatprogs=("flatseal" "pupgui2" "org.eclipse.Java" "zoom" "runelite" "minecraft" "com.visualstudio.code"
"com.google.AndroidStudio" "com.anydesk.Anydesk" "birdtray")

echo "App bundle installer for Steam Deck."
echo "Created by: https://github.com/Filune"
sleep 5
echo
echo "Type 'y' to start the installation process..."
read prompt
checkyes="y"

if [ $prompt = $checkyes ]; then
  yes | LC_ALL=en_US.UTF-8 sudo pacman -Syu
  for i in ${nativeprogs[@]}; do
    yes | LC_ALL=en_US.UTF-8 sudo pacman -S $i
  done

  for j in ${flatprogs[@]}; do
    flatpak install $j
  done

fi

tput reset
echo -e "\x1b[32mAll done. You may now close this terminal window."
exit 0
