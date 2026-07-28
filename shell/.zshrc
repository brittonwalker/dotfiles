# Homebrew
if command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
fi

DOTFILES="$HOME/dotfiles"

# Shell configuration
source "$DOTFILES/shell/path.zsh"
source "$DOTFILES/shell/exports.zsh"
source "$DOTFILES/shell/aliases.zsh"
source "$DOTFILES/shell/functions.zsh"
source "$DOTFILES/shell/init.zsh"

# Starship
eval "$(starship init zsh)"

# Local overrides
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local