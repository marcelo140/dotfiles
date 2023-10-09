export DOTFILES="$HOME/.dotfiles"

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/commands.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/aliases.zsh

source /opt/homebrew/opt/asdf/libexec/asdf.sh

