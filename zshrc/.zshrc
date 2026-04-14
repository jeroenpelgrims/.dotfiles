# SSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
ssh-add ~/.ssh/archtux 2>/dev/null

# Oh-My-Zsh
export ZSH="/usr/share/oh-my-zsh"
ZSH_THEME=agnoster
source $ZSH/oh-my-zsh.sh

# Setup powerline fonts
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# Command aliases
alias vim="nvim"

# nvm (node)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# bun 
[ -s "/home/resurge/.bun/_bun" ] && source "/home/resurge/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# uv
. "$HOME/.local/bin/env"
