source ~/.config/zsh/omzsh-init.sh
zsh-defer source ~/.config/zsh/zoxide-init.sh

alias v=nvim
alias t=go-task
alias c=z

alias tmux="tmux -f ~/.tmux.conf"
export TERMINFO=/usr/share/terminfo

bindkey -v
export EDITOR='nvim'
export PATH="$HOME/.local/bin:$PATH"
bindkey '^R' history-incremental-search-backward

# bun completions
[ -s "/home/stevenewald/.bun/_bun" ] && source "/home/stevenewald/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export UID=$(id -u)
export GID=$(id -g)
