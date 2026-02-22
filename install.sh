#!/bin/bash
# install.sh

DOTFILES=~/projects/dotfiles

ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.gitconfig ~/.gitconfig
# Link VSCode settings (Cursor)
ln -sf $DOTFILES/vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
# Link Ghostty config (Ghostty on macOS loads from Application Support first)
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf $DOTFILES/ghostty/config "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
# Link Tmux config
ln -sf $DOTFILES/.tmux.conf ~/.tmux.conf

