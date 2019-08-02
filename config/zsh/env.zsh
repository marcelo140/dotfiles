export LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export EDITOR=nvim
export ANDROID_HOME=$HOME/Android/Sdk

export PATH="$DOTFILES/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export WORDCHARS='' # '/' behave like word separators

export ERL_AFLAGS="-kernel shell_history enabled"

export KITTY_CONF="$DOTFILES/config/kitty"
export CURRENT_CS_PATH=$KITTY_CONF/current-colorscheme
export LIGHT_CS_PATH=$KITTY_CONF/light-colorscheme
export DARK_CS_PATH=$KITTY_CONF/dark-colorscheme
