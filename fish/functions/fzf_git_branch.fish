function fzf_git_branch
    if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo "No estás en un repositorio Git"
        return
    end

    set -l branch (git branch -a --color=always | grep -v '/HEAD' | fzf \
        --height 50% --layout reverse --border --ansi \
        --preview 'git log --oneline --graph --date=short --color=always -n 10 (echo {} | sed "s/.* //" | sed "s#remotes/[^/]*/##")' \
        --header "Git Checkout Branch")

    if test -n "$branch"
        set -l clean_branch (echo $branch | sed "s/.* //" | sed "s#remotes/[^/]*/##")
        
        git checkout $clean_branch
        commandline -f repaint
    else
        commandline -f repaint
    end
end
