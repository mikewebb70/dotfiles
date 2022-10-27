
# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-keybindings"
zsh_add_file "zsh-plugins"
# PATH
#
path+=('$HOME/bin' '$HOME/.local/bin') 
export PATH

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle :compinstall filename '/home/mike/.config/zsh/.zshrc'
zstyle ':completion::complete:*' gain-privileges 1
_comp_options+=(globdots)

HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep
bindkey -v

# Prompt ZSH
#autoload -Uz promptinit
#promptinit

# Remembering recent directories
# install zoxide?


# Help command
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help



# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef <$TTY >$TTY	# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')
#
# XDG Directories
#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Disable less history files
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
export READER="zathura"
export VISUAL="vim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
 
# Load custom keymaps here 

