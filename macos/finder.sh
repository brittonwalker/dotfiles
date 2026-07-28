#!/usr/bin/env bash

set -euo pipefail

#
# Show hidden files
#
defaults write com.apple.finder AppleShowAllFiles -bool true

#
# Show filename extensions
#
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#
# Show path bar
#
defaults write com.apple.finder ShowPathbar -bool true

#
# Show status bar
#
defaults write com.apple.finder ShowStatusBar -bool true

#
# Open new Finder windows in Home
#
defaults write com.apple.finder NewWindowTarget -string "PfHm"

#
# Restart Finder
#
killall Finder || true