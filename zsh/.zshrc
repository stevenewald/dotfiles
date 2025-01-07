source ~/.config/zsh/omzsh-init.sh
source ~/.config/zsh/path.sh
zsh-defer source ~/.config/zsh/zoxide-init.sh
# zsh-defer source ~/.config/zsh/ignored.sh

alias v=nvim
alias t=go-task
alias c=z

export TERMINFO=/usr/share/terminfo

bindkey -v
export EDITOR='nvim'
bindkey '^R' history-incremental-search-backward

export UID=$(id -u)
export GID=$(id -g)

zstyle ':omz:plugins:alias-finder' autoload yes 
zstyle ':omz:plugins:alias-finder' cheaper yes

# bun completions
[ -s "/home/stevenewald/.bun/_bun" ] && source "/home/stevenewald/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
