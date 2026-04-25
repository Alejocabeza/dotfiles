# Solo ejecutar fastfetch si NO estamos en Warp (Warp ya da su propio toque visual)
if not set -q TERM_PROGRAM; or test "$TERM_PROGRAM" != "WarpTerminal"
    fastfetch
end

fish_add_path ~/.local/bin

# Saludo vacío
set fish_greeting ""
set -gx TERM xterm-256color

# --- Habilitar bindings Vi ---
# Nota: Warp maneja sus propios atajos, a veces esto causa lag en Warp
fish_vi_key_bindings
set -g fish_sequence_key_delay_ms 10

# PATHs
set -gx PATH "$PATH:/home/alejandrocabeza/.config/composer/vendor/bin"

# --- FNM ---
fnm env --use-on-cd | source

# Alias (Estos no suelen dar problemas)
alias ll='exa -l -g --icons'
alias lla='ll -a'
alias tree='exa --tree --level=2 --icons'
alias vim='nvim'
alias g='git'
alias cat='bat'

# Cursores (Warp los ignora porque usa los suyos propios)
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# --- Starship ---
# Solo inicializar si NO es Warp, o usar la integración oficial
if not set -q TERM_PROGRAM; or test "$TERM_PROGRAM" != "WarpTerminal"
    starship init fish | source
end

set -gx EDITOR nvim
set -gx VISUAL nvim

# Android
set -x ANDROID_HOME $HOME/Android/Sdk
set -x ANDROID_SDK_ROOT $HOME/Android/Sdk
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
fish_add_path $ANDROID_HOME/platform-tools
