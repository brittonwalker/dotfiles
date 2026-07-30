# NVM
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# zoxide
eval "$(zoxide init zsh)"

# fzf
eval "$(fzf --zsh)"

# Future
# eval "$(mise activate zsh)"
eval "$(starship init zsh)"