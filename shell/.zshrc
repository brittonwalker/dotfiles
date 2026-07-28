# Homebrew
eval "$(/usr/local/bin/brew shellenv)"

# Shell configuration
source ~/dotfiles/shell/path.zsh
source ~/dotfiles/shell/exports.zsh
source ~/dotfiles/shell/aliases.zsh
source ~/dotfiles/shell/functions.zsh
source ~/dotfiles/shell/tools.zsh

# Local overrides
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local