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

### Cursor / VSCode extensions

Install the Cursor CLI first: in Cursor run **Shell Command: Install 'cursor' command in PATH** from the Command Palette (`Cmd+Shift+P`).

**Save current extensions to `vscode/extensions.txt` (freeze):**
```bash
cursor --list-extensions > ~/projects/dotfiles/vscode/extensions.txt
```

**Install all extensions from `vscode/extensions.txt`:**
```bash
cat ~/projects/dotfiles/vscode/extensions.txt | grep -v '^\s*#' | grep -v '^\s*$' | xargs -L 1 cursor --install-extension
```

Or run the installer script (installs extensions if `vscode/extensions.txt` exists):
```bash
./install.sh
```
