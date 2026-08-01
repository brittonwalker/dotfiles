#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/dotfiles"

link() {
    local source="$1"
    local target="$2"

    if [[ ! -e "$source" ]]; then
        printf "❌ Source not found: %s\n" "$source"
        return 1
    fi

    mkdir -p "$(dirname "$target")"

    printf "🔗 %-30s → %s\n" "$target" "$source"

    ln -sfn "$source" "$target"
}

mkdir -p "$HOME/.config"

link "$DOTFILES/shell/.zshrc" "$HOME/.zshrc"

link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"

link "$DOTFILES/.config/starship.toml" \
     "$HOME/.config/starship.toml"

link "$DOTFILES/.config/mise.toml" \
     "$HOME/.config/mise.toml"

link "$DOTFILES/vscode/settings.json" \
     "$HOME/Library/Application Support/Code/User/settings.json"

link "$DOTFILES/vscode/keybindings.json" \
     "$HOME/Library/Application Support/Code/User/keybindings.json"

link "$DOTFILES/vscode/snippets" \
     "$HOME/Library/Application Support/Code/User/snippets"