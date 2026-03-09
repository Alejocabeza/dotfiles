function fzf_change_directory
    # Buscamos desde / (raíz) y redirigimos errores a /dev/null para evitar ruido de permisos
    set -l dir (fd --type d --hidden --exclude .git --exclude node_modules . / 2>/dev/null | fzf \
        --height 40% \
        --layout reverse \
        --border \
        --ansi \
        --preview 'eza --tree --level=1 --icons --color=always {}' \
        --header "Buscando en todo el sistema (Raíz)")

    if test -n "$dir"
        cd "$dir"
        commandline -f repaint
    else
        commandline -f repaint
    end
end
