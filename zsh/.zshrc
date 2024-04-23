source ~/.config/zsh/omzsh-init.sh
source ~/.config/zsh/zoxide-init.sh
source ~/.config/zsh/aliases.sh
source ~/.config/zsh/path.sh

eval $(thefuck --alias)

alias tmux="tmux -f ~/.tmux.conf"

export TERMINFO=/usr/share/terminfo

if command -v tmux &> /dev/null && [ -n "$TMUX" ]; then
  source ~/.config/zsh/omzsh-init.sh
  # exec tmux
fi

alias replace_string="~/.config/zsh/replace-string.sh"

# bun completions
[ -s "/home/stevenewald/.bun/_bun" ] && source "/home/stevenewald/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# set vim keybindings
bindkey -v

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export EDITOR='nvim'
bindkey '^R' history-incremental-search-backward
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.9.0.9-3.fc39.x86_64
