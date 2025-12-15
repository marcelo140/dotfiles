export DOTFILES="$HOME/.dotfiles"

source $(brew --prefix antidote)/share/antidote/antidote.zsh
antidote load $DOTFILES/zsh_plugins.txt

source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/aliases.zsh

source $HOME/.config/zsh/fzf.zsh
source $(brew --prefix asdf)/libexec/asdf.sh

bindkey -e

[[ -f ~/.private-zshrc ]] && source ~/.private-zshrc

eval "$(zoxide init zsh)"
