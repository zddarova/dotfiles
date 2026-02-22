source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/projects/dotfiles/zsh_theme/catppuccin_mocha-zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/andrii/.lmstudio/bin"
# End of LM Studio CLI section

