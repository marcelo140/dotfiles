vf() {
    if [[ "$1" == "-d" ]]; then
        FILE_PATH=$(find "$HOME/.dotfiles" ! -path "$HOME/.dotfiles/.git/*" -type f | fzf -1 -0 --reverse --height 40% --with-nth='5..' --delimiter='/')
    else
        FILE_PATH=$(fasd -Rfl | fzf +s -1 -0 --reverse --height 40%)
    fi

    print -s "vim $FILE_PATH"
    [[ -n $FILE_PATH ]] && nvim $FILE_PATH
}

alias vf=' vf'

cf() {
    DIR_PATH=$(fasd -Rdl | fzf -1 -0 --reverse --height 40%)

    print -s "cd $DIR_PATH"
    [[ -n $DIR_PATH ]] && cd $DIR_PATH
}

alias cf=' cf'

swap-cs() {
    current_cs=$(<$CURRENT_CS_PATH)

    if [ "$current_cs" = "dark" ]; then
        kitty @set-colors -c -a $LIGHT_CS_PATH
        echo "light" > $CURRENT_CS_PATH
    else
        kitty @set-colors -c -a $DARK_CS_PATH
        echo "dark" > $CURRENT_CS_PATH
    fi
}
