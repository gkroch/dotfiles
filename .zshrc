# My Zsh configuration

# Antigen config
source "$HOME/.dotfiles/antigen.zsh"
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen apply
# End of Antigen

alias l='ls -lah'
alias mux="tmuxinator"

export PATH="$PATH:$HOME/.dotfiles/bin/"
export PATH="/Users/gkroch/.local/bin/:$PATH"
export PATH="/Users/gkroch/.cargo/bin:$PATH"
export EDITOR="vim"
export PAGER="less"
export LEDGER_FILE="/Users/gkroch/.dotfiles/2018.journal"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg'
