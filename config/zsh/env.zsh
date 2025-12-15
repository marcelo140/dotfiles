export XDG_CONFIG_HOME="$HOME/.config"
export LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export EDITOR=nvim
export GPG_TTY=$(tty)
export WORDCHARS='' # '/' behave like word separators

export PATH="$DOTFILES/bin:$PATH"
export PATH="$(python3 -m site --user-base)/bin:$PATH"
export PATH="$(asdf where golang)/bin:$PATH"
export PATH="$(asdf where nodejs)/bin:$PATH"
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$HOME/.codeium/windsurf/bin:$PATH"

source "$HOME/.cargo/env"
