#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/dotfiles"

brew bundle --file="$DOTFILES/Brewfile"