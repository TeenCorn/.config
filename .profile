# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin directories
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export GTK2_RC_FILES=/home/teencorn/.gtkrc-2.0

export QSYS_ROOTDIR="/home/teencorn/Notes/CSCI113/intelFPGA_lite/17.1/quartus/sopc_builder/bin"

export EDITOR=nvim
export VISUAL=nvim

dbus-update-activation-environment --all
