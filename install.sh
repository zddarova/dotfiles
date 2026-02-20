#!/bin/bash
# install.sh

DOTFILES=~/projects/dotfiles

ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.gitconfig ~/.gitconfig
# Link VSCode settings (Cursor)
ln -sf ~/projects/dotfiles/vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
# Link Ghostty config
ln -sf ~/projects/dotfiles/ghostty/config ~/.config/ghostty/config
