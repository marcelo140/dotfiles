export DOTFILES="$HOME/.dotfiles"

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/commands.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/aliases.zsh

source $HOME/.config/zsh/fasd.zsh
source $HOME/.config/zsh/fzf.zsh

source $(brew --prefix asdf)/libexec/asdf.sh

[[ -x $(command -v virtualenv) ]] && source /usr/local/bin/virtualenvwrapper.sh

if [[ -f "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" ]]; then
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
fi

