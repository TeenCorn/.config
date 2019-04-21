set -o vi
source /usr/share/defaults/etc/profile

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export VISUAL=nvim
export EDITOR=$VISUAL

alias fetchYml="$HOME/repository/common/Scripts/yauto.py"
alias makecommon='echo "include ../Makefile.common" > Makefile'
alias cproject=$HOME/.local/bin/./cproject
alias c++project=$HOME/.local/bin/./c++project
alias jnotify='echo -e "\a" && notify-send -a $TERM -i kitty "Job Completed"'
