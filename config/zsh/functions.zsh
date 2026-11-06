gb() {
    local branch output exit_code worktree_path

    branch=$(git branch --format='%(refname:short)' | fzf --height 40% --layout=reverse --prompt="Checkout Branch: ")
    if [[ -z "$branch" ]]; then
        return 0
    fi

    output=$(git checkout "$branch" 2>&1)
    exit_code=$?

    if [[ $exit_code -eq 0 ]]; then
        return 0
    fi

    worktree_path=$(echo "$output" | grep -oE "is already used by worktree at '[^']+'" | sed -E "s/.*'([^']+)'.*/\1/")

    if [[ -n "$worktree_path" ]]; then
        echo "Worktree found. cd '$worktree_path'"
        cd "$worktree_path"
    else
        echo "$output" >&2
        return $exit_code
    fi
}
