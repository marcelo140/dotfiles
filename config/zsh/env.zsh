export LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export EDITOR=nvim

export GPG_TTY=$(tty)

export GOPATH="$HOME/.go"

export PATH="$DOTFILES/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$SCALA_HOME/bin:$PATH"

export WORDCHARS='' # '/' behave like word separators

source "$HOME/.cargo/env"
