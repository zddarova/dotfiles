#!/bin/bash
# install.sh

DOTFILES=~/projects/dotfiles

ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.gitconfig ~/.gitconfig
# Link VSCode settings (Cursor)
ln -sf $DOTFILES/vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
# Link Ghostty config
ln -sf $DOTFILES/ghostty/config ~/.config/ghostty/config
# Link Tmux config
ln -sf $DOTFILES/.tmux.conf ~/.tmux.conf

