#!/bin/zsh

zsh_plugins="$DOTFILES/zsh_plugins.zsh"
txt_zsh_plugins="$DOTFILES/zsh_plugins.txt"

# Generate zsh load script if it's outdated
if [[ ! ${zsh_plugins} -nt ${txt_zsh_plugins} ]]; then
    source $(brew --prefix antidote)/share/antidote/antidote.zsh
    antidote bundle < ${txt_zsh_plugins} > ${zsh_plugins}
fi

source ${zsh_plugins}

