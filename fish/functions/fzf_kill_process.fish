function fzf_kill_process
    set -l pid (ps -ef | sed 1d | fzf --header "Selecciona proceso para matar" | awk '{print $2}')
    if test -n "$pid"
        kill -9 $pid
        commandline -f repaint
    end
end
