# Homebrew
eval "$(/usr/local/bin/brew shellenv)"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Tool initialization
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

# Navigation aliases
alias ..="cd .."
alias ...="cd ../.."

alias proj="cd ~/Projects"
alias dev="cd ~/Development"
alias dots="cd ~/dotfiles"

# Git aliases
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"

# General aliases
alias ls="eza"
alias ll="eza -la --git"
alias tree="eza --tree --git-ignore"

alias reload='source "$HOME/.bash_profile"'

alias path='echo "$PATH" | tr ":" "\n"'

# Functions
mkcd() {
    mkdir -p "$1"
    cd "$1"
}