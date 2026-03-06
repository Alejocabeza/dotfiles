function fzf_history
    set -l command (history | fzf --layout=reverse --header "Historial de comandos")
    if test -n "$command"
        commandline -r "$command"
    end
    commandline -f repaint
end
