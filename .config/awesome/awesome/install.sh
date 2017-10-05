#!/bin/bash
awesomeConf="$HOME/.config/awesome"
mkdir "$HOME/.icons"
mkdir "$HOME/Wallpapers"
wget -0 "$HOME/.icons/awesomeicon.png" http://i.imgur.com/TQnJpuw.png
wget -0 "$HOME/Wallpapers/laincap.png" http://i.imgur.com/mOavUnr.png

cp -R ./lain "$awesomeConf/"
cp ./rc.lua "$awesomeConf/"
cp ./theme.lua "$awesomeConf/"
