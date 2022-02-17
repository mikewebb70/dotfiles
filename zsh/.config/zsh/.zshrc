# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
source $(dirname $(gem which colorls))/tab_complete.sh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias ls="colorls"
alias ssh="TERM=xterm-256color; ssh"
alias v3="vim ~/.config/i3/config"
alias grep="rg"
