
      # Muestra fastfetch al inicio
      fastfetch
      # tmux new -s Main
      fish_add_path ~/.local/bin

      # Iniciar el agente SSH en Fish
      # eval (ssh-agent -c)

      # Agregar ambas claves
      # if status is-interactive
      #     if not set -q SSH_AUTH_SOCK
      #         ssh-agent -s | source
      #     end
      # end
      # ssh-add ~/.ssh/id_ed25519_personal
      # ssh-add ~/.ssh/id_ed25519_walls

      # Saludo vacío
      set fish_greeting ""
      # Asegura el TERM correcto para colores
      set -gx TERM xterm-256color

      # --- Tus bindings personalizados ---
      bind -M insert \cc kill-whole-line repaint
      bind \cd 'find_directory' repaint
      bind -M insert \cd 'find_directory' repaint
      bind \cf 'find_files' repaint
      bind -M insert \cf 'find_files' repaint
      bind \cl 'find_container_docker_and_run_bash' repaint # Asegúrate que esta función exista

      # --- Configuración del prompt (si no usas un tema como starship/tide) ---
      # set -g theme_color_scheme terminal-dark # Estos parecen ser de oh-my-fish/themes
      # set -g fish_prompt_pwd_dir_length 1
      # set -g theme_display_user yes
      # set -g theme_hide_hostname no
      # set -g theme_hostname always

      # --- Habilitar bindings Vi y FZF ---
      fish_vi_key_bindings
      # set -g fzf_key_bindings # Descomenta si quieres los bindings por defecto de fzf.fish

      # --- Retraso para secuencias de teclas (Vi mode) ---
      set -g fish_sequence_key_delay_ms 10

      # --- Tus funciones personalizadas ---
      function find_directory
        # Usa fd y fzf para cambiar de directorio
        # Asegúrate que fd y fzf estén en home.packages
        fd --type d --hidden --exclude .git --base-directory $HOME . $HOME | fzf --preview 'exa --tree --level=1 --icons {}' | read -l dir
        if test -n "$dir"
          cd "$dir"
          commandline -r "" # Limpia la línea de comandos después de cd
        else
          commandline -r "" # Limpia si se cancela
        end
      end

      function find_files
        # Usa fd y fzf para abrir archivos con nvim
        fd --type f --hidden --exclude .git . $HOME | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | read -l file
        if test -n "$file"
          nvim "$file"
          commandline -r ""
        else
          commandline -r ""
        end
      end

      function tm
        # Inicia o adjunta a una sesión de tmux con el nombre del directorio actual
        set session_name (basename (pwd) | sed 's/\.//g') # Limpia el nombre de sesión
        if not tmux has-session -t=$session_name 2>/dev/null
          tmux new-session -s $session_name -d # Inicia en segundo plano si no existe
        end
        tmux attach-session -t $session_name
      end

      # Añade el directorio vendor de Composer al PATH
      set -gx PATH "$PATH:/home/alejandrocabeza/.composer/vendor/bin"

      # --- Inicializar FNM (Node Version Manager) ---
      # Asegúrate que fnm esté en home.packages
      fnm env --use-on-cd | source

      # Alias
      alias ll='exa -l -g --icons'
      alias lla='ll -a'
      alias tree = 'exa --tree --level=2 --icons'
      alias vim = 'nvim'
      alias g = 'git'
      alias cat = 'bat'
