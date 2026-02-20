#!/bin/bash
# macos.sh — macOS defaults based on diff vs clean user
# Run: chmod +x macos.sh && ./macos.sh
# Note: Some changes require logout/restart to take effect

echo "Applying macOS settings..."

###############################################################################
# Appearance
###############################################################################
# Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
# Icon appearance theme (Auto)
defaults write NSGlobalDomain AppleIconAppearanceTheme -string "RegularAutomatic"

###############################################################################
# Finder
###############################################################################
# Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Show hidden files (dotfiles)
defaults write com.apple.finder AppleShowAllFiles -bool true
# Default view: Nlsv=list, icnv=icons, clmv=columns, glyv=cover flow
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Avoid creating .DS_Store on network/USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

###############################################################################
# Dock & Mission Control
###############################################################################
# Size (1–128, ~50 is default)
defaults write com.apple.dock tilesize -int 60
# Magnification when hovering
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 90
# Position: left, bottom, right
defaults write com.apple.dock orientation -string "left"
# Auto-hide
defaults write com.apple.dock autohide -bool true
# Don't show recent apps
defaults write com.apple.dock show-recents -bool false
# Don't rearrange spaces based on recent use
defaults write com.apple.dock mru-spaces -bool false
# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

###############################################################################
# Trackpad & Mouse
###############################################################################
# Tap to click (current host so it applies in this session too)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

###############################################################################
# Sound
###############################################################################
# Mute system beep volume (no alert/volume-change sounds)
defaults write NSGlobalDomain "com.apple.sound.beep.volume" -float 0

###############################################################################
# Keyboard (dev-friendly)
###############################################################################
# Faster key repeat (great for coding — arrow keys, backspace)
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# Disable autocorrect (annoying when coding)
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
# Allow apps from anywhere (uncomment if you need it for dev)
# sudo spctl --master-disable

###############################################################################
# Safari
###############################################################################
# On newer macOS, Safari defaults may need Full Disk Access for Terminal to take effect.
# Enable Develop menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# Show full URL in address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

###############################################################################
# Done
###############################################################################

echo "Applying Finder and Dock..."
killall Finder 2>/dev/null
killall Dock 2>/dev/null
echo "Done! Some settings may require a logout or restart to take effect."
