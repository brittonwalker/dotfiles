#!/usr/bin/env bash

set -euo pipefail

#
# Remove Launchpad from the Dock
#
defaults write com.apple.dock ResetLaunchPad -bool true

killall Dock || true