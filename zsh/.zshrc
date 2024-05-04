source ~/.config/zsh/zoxide-init.sh
source ~/.config/zsh/omzsh-init.sh

alias v=nvim
alias t=task
alias c=z

alias tmux="tmux -f ~/.tmux.conf"
export TERMINFO=/usr/share/terminfo

bindkey -v
export EDITOR='nvim'
bindkey '^R' history-incremental-search-backward
