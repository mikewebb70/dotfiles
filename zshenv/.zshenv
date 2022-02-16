# PATH
#
path+=('$HOME/bin' '$HOME/.local/bin' '/home/mike/.local/share/gem/ruby/3.0.0/bin') 
export PATH

#
# XDG Directories
#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Disable files
export LESSHISTFILE=-
#
# # Fixing Paths
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

#  Default Apps
export EDITOR="vim"
# export READER="zathura"
export VISUAL="vim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
 

