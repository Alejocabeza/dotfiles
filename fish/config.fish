
# Muestra fastfetch al inicio
fastfetch
# tmux new -s Main
fish_add_path ~/.local/bin

# Iniciar el agente SSH en Fish
# eval (ssh-agent -c)

# Saludo vacío
set fish_greeting ""
# Asegura el TERM correcto para colores
set -gx TERM xterm-256color

# --- Habilitar bindings Vi y FZF ---
fish_vi_key_bindings
# set -g fzf_key_bindings # Descomenta si quieres los bindings por defecto de fzf.fish

# --- Retraso para secuencias de teclas (Vi mode) ---
set -g fish_sequence_key_delay_ms 10

# Añade el directorio vendor de Composer al PATH
set -gx PATH "$PATH:/home/alejandrocabeza/.composer/vendor/bin"

# --- Inicializar FNM (Node Version Manager) ---
# Asegúrate que fnm esté en home.packages
fnm env --use-on-cd | source

# Load key bindings custom
set -g fish_key_bindings fish_user_key_bindings

# Alias
alias ll='exa -l -g --icons'
alias lla='ll -a'
alias tree='exa --tree --level=2 --icons'
alias vim='nvim'
alias g='git'
alias cat='bat'

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

set -gx FZF_DEFAULT_OPTS "
  --color=fg:#d4be98,bg:-1,hl:#e67e80
  --color=fg+:#d4be98,bg+:#3c3836,hl+:#e67e80
  --color=info:#a9b665,prompt:#7daea3,pointer:#d3869b
  --color=marker:#d3869b,spinner:#a9b665,header:#7daea3
  --height 40% --layout reverse --border
"


