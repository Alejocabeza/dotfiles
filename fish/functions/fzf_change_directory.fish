function fzf_change_directory
    set -l dir (fd --type d --hidden --exclude .git --exclude node_modules --base-directory $HOME . | fzf \
        --height 40% \
        --layout reverse \
        --border \
        --preview 'eza --tree --level=1 --icons --color=always $HOME/{}' \
        --header "Buscar directorio en $HOME")

    if test -n "$dir"
        cd "$HOME/$dir"
        commandline -f repaint
    else
        commandline -f repaint
    end
end
