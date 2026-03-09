function fzf_git_log
    if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo "No estás en un repositorio Git"
        return
    end

    set -l log_format "%C(yellow)%h%C(reset) %C(magenta)%ad%C(reset) %s %C(cyan)(%an)%C(reset)"

    set -l commit (git log --graph --color=always --format="$log_format" --date=short | fzf \
        --height 40% \
        --layout reverse \
        --ansi \
        --no-sort \
        --preview 'git show --color=always (echo {} | grep -o "[a-f0-9]\{7,40\}" | head -1) | delta --width $FZF_PREVIEW_COLUMNS --theme="gruvbox-material"' \
        --header "Explorar Historial (Enter para copiar Hash, ESC para salir)")

    if test -n "$commit"
        set -l hash (echo $commit | grep -o "[a-f0-9]\{7,40\}" | head -1)
        commandline -r "$hash"
        echo "Hash copiado al buffer: $hash"
    end
    commandline -f repaint
end
