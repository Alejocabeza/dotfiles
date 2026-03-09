function fzf_history
    set -l command (history | fzf \
        --layout reverse \
        --border \
        --height 40% \
        --ansi \
        --header "Historial de comandos")

    if test -n "$command"
        commandline -r "$command"
    end
    commandline -f repaint
end
