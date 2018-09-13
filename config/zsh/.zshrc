export DOTFILES="$HOME/.dotfiles"
export ZDOTDIR="$DOTFILES/zsh"

# load zsh plugins
source "$DOTFILES/antibody/antibody.init"

# load keybindings
source "$ZDOTDIR/keybindings.zsh"

# load completion options
source "$ZDOTDIR/completion.zsh"

# load aliases
source "$ZDOTDIR/aliases.zsh"

# Correct gruvbox colorscheme
source ~/.vim/bundle/gruvbox/gruvbox_256palette.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
