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
