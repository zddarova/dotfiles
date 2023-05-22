## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Clone repo into new hidden directory.
```zsh
git clone https://github.com/zddarova/dotfiles.git
```

4. Install Oh my zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

5. Install chezmoi
```
brew install chezmoi
```

6. Setup chezmoi 
 ```
 chezmoi init --apply zddarova
 ```

7. Install from brew
 ```
 brew bundle --file Brewfile
 ```

 ## For committing to chezmoi do

 ```
  chezmoi add <filename>
  chezmoi -v apply
  chezmoi cd
  git add .
  git commit -m "commit message"
  git push origin
 ```

## For updating brewfile

```
brew bundle dump --describe
```


## TODO List

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organize these growing steps into multiple script files.
- Find inspiration and examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
