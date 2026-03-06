function fzf_edit_file
    set -l file (fd --type f --hidden --exclude .git . | fzf \
        --preview 'bat --style=numbers --color=always --line-range :50 {}' \
        --header "Abrir archivo con $EDITOR")

    if test -n "$file"
        $EDITOR "$file"
        commandline -f repaint
    else
        commandline -f repaint
    end
end
