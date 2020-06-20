export DOTFILES="$HOME/.dotfiles"

source $HOME/.config/zsh/antibody.zsh
source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/commands.zsh
source $HOME/.config/zsh/history.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/keybindings.zsh
source $HOME/.config/zsh/aliases.zsh

[[ -d $HOME/.asdf/        ]] && source $HOME/.asdf/asdf.sh && source $HOME/.asdf/completions/asdf.bash
[[ -x $(command -v fasd)  ]] && source $HOME/.config/zsh/fasd.zsh
[[ -x $(command -v fzf)   ]] && source $HOME/.config/zsh/fzf.zsh

kitty-load-cs
