#!/usr/bin/env bash

set -euo pipefail

#
# Configuration
#

DOTFILES="$HOME/dotfiles"

source "$DOTFILES/scripts/utils.sh"

#
# Main
#

main() {
    run_step "🍺" "Installing Homebrew packages" "$DOTFILES/scripts/brew.sh"
    run_step "🔗" "Linking configuration" "$DOTFILES/scripts/link.sh"
    run_step "🖥️" "Applying macOS defaults" "$DOTFILES/macos/defaults.sh"

    log_success "Installation complete!"
}

main