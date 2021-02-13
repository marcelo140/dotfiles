export LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export EDITOR=nvim

export GPG_TTY=$(tty)

export GOPATH="$HOME/.go"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export SCALA_HOME="/usr/local/opt/scala@2.12"

export PATH="$DOTFILES/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$SCALA_HOME/bin:$PATH"

export WORDCHARS='' # '/' behave like word separators

export ERL_AFLAGS="-kernel shell_history enabled"

# Configuration for virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#
# GCloud
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
