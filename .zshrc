# Path to your oh-my-zsh installation.
export ZSH=/home/sera/.oh-my-zsh

# Select theme
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

# User configuration
source /etc/environment
source $ZSH/oh-my-zsh.sh

# Aliases
alias clear='clear;printf "\e]20;;100x100+1000+1000\a"'
alias nmgui=~/bin/nmapplet/nmgui.sh
alias yumenikki='~/.wine/drive_c/Games/Yume\ Nikki/RPG_RT.exe'

shot() {
   FILE="$(scrot -s '/tmp/%H%M%S_$w$h.png' -e 'echo $f' )"
   printf "Temporary file stored at %s \n" "$FILE"
   echo -n "Upload? Y/n/preview: "
   read ans
   if [ "$ans" = "p" ]; then
      feh -q "$FILE" &
      echo -n "Upload? Y/n :"
      read ans
   elif [ "$ans" = "n" ]; then
      exit
   fi
   OUT="$(imgur $FILE || return) "
   printf "image uploaded at url: %s " "$OUT"
}

# Magic colourised manpages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
eval `dircolors /home/sera/.dircolors.256dark`
export HISTCONTROL=ignoreboth
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dsun.java2d.opengl=true' 
export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox

