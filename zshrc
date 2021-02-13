export DOTFILES="$HOME/.dotfiles"

[[ -f $HOME/.private-env.zsh ]] && source $HOME/.private-env.zsh

source $HOME/.config/zsh/antibody.zsh
source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/commands.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/completion.zsh
# source $HOME/.config/zsh/keybindings.zsh
source $HOME/.config/zsh/aliases.zsh

source $HOME/.config/zsh/fasd.zsh
source $HOME/.config/zsh/fzf.zsh

source /usr/local/opt/asdf/asdf.sh
source /usr/local/bin/virtualenvwrapper.sh

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

