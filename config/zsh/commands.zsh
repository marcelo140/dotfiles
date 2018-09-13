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

aget() {
    wget --no-glob $(downloader $1)
}
