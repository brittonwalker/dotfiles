#!/usr/bin/env bash

set -euo pipefail

#
# Disable "Look up & data detectors"
#
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0
defaults write NSGlobalDomain com.apple.trackpad.threeFingerTapGesture -int 0