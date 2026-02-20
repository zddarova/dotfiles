# zddarova dotfiles


### Create symlinks
```bash
mv ~/.zshrc ~/projects/dotfiles/.zshrc
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
```

### Verify symlink
```bash
ls -la ~/.zshrc ~/.gitconfig
```

### Install
```bash
chmod +x install.sh
./install.sh
source ~/.zshrc
```

### Freeze Brewfile
```bash
brew bundle dump --file=~/projects/dotfiles/Brewfile --force
```

### Install Brewfile
```bash
brew bundle install --file=~/projects/dotfiles/Brewfile
```

### Install macOS settings
```bash
chmod +x macos_settings.sh
./macos_settings.sh
```
