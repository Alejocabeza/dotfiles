# home.nix
{ config, pkgs, ... }:

# --- Bloque let para definir variables locales ---
let
  # Define tu versión de PHP base para facilitar cambios futuros
  phpBase = pkgs.php84;

  # Crea una versión personalizada de PHP con las extensiones que necesitas
  phpWithMyExtensions = phpBase.withExtensions (
    { all, enabled }: enabled ++ [
      # Toma las extensiones habilitadas por defecto y añade las siguientes:
      # --- La extensión clave que necesitas ---
      all.imagick

      # --- Otras extensiones comunes y recomendadas para desarrollo web/Laravel ---
      # Descomenta o añade las que necesites para tu proyecto específico
      all.gd # Alternativa a Imagick, útil tenerla disponible
      all.pdo_sqlite # Para bases de datos SQLite
      all.pdo_mysql # Para bases de datos MySQL/MariaDB
      all.pdo_pgsql # Para bases de datos PostgreSQL
      all.intl # Para funciones de internacionalización
      all.zip # Para manejar archivos ZIP (común con Composer)
      all.bcmath # Para matemáticas de precisión arbitraria
      all.sodium # Para operaciones criptográficas modernas
      all.opcache # Generalmente habilitada por defecto en 'enabled', mejora rendimiento
      all.redis # Para almacenamiento en cache con Redis
      # ... puedes añadir más extensiones de 'all' aquí
    ]
  );

  # Crea una variante de PHP con memory_limit aumentado
  phpWithMemoryLimit = phpWithMyExtensions.passthru.buildEnv {
    extraConfig = ''
      memory_limit = 512M
    '';
  };

  # Define Composer específicamente para tu versión de PHP personalizada (más robusto)
  composerForMyPhp = pkgs.php84Packages.composer.override {
    php = phpWithMemoryLimit; # Asegura que Composer use el PHP con memory_limit personalizado
  };

  # --- Fin del bloque let ---
in
{
  # --- Configuración básica de Home Manager ---
  home.username = "alejocabeza";
  home.homeDirectory = "/home/alejocabeza";
  home.stateVersion = "24.11"; # Por favor, lee el comentario original antes de cambiar.

  # --- Configuración de Nixpkgs ---
  nixpkgs.config = {
    allowUnfree = true; # Permite instalar paquetes no libres
  };

  # --- Paquetes a instalar en tu entorno de usuario ---
  home.packages = [
    # --- Tu PHP personalizado con extensiones incluidas ---
    phpWithMemoryLimit

    # --- Composer asociado a tu PHP personalizado ---
    composerForMyPhp

    # --- Dependencia del sistema requerida por la extensión php-imagick ---
    pkgs.imagemagick

    # --- Tus otros paquetes ---
    pkgs.bat
    pkgs.fish
    pkgs.fastfetch
    pkgs.eza
    pkgs.fzf
    pkgs.fd
    pkgs.tmux
    pkgs.lazygit
    pkgs.xclip
    pkgs.xsel
    pkgs.wl-clipboard
    # pkgs.wl-clipboard
    pkgs.btop
    pkgs.fnm
    pkgs.rustup
    pkgs.sqlite # Herramienta CLI de SQLite
    pkgs.postgresql # Herramientas CLI/servidor de PostgreSQL
    #pkgs.vscode
    #pkgs.postman
    #pkgs.kitty
    pkgs.nerd-fonts.hack # Asegúrate que este paquete exista o usa pkgs.hack-font u otro nerd font
    pkgs.luarocks-nix
    pkgs.oh-my-fish
    pkgs.libgcc
    pkgs.bun
    pkgs.python313
    pkgs.gnumake42
    pkgs.libcdada
    # pkgs.mongodb-compass
  ];

  # --- Gestión de archivos de configuración (dotfiles) ---
  home.file = {
    ".gitconfig".source = /home/alejocabeza/.dotfiles/.gitconfig; # Asegúrate que esta ruta relativa sea correcta
    ".config/nvim".source = /home/alejocabeza/.dotfiles/nvim; # Asegúrate que esta ruta relativa sea correcta
    "utils".source = /home/alejocabeza/.dotfiles/utils;
    ".config/kitty".source = /home/alejocabeza/.dotfiles/kitty;
    ".bashrc".source = /home/alejocabeza/.dotfiles/.bashrc;
  };

  # --- Variables de entorno de sesión ---
  home.sessionVariables = {
    EDITOR = "nvim";
    COMPOSER_HOME = "${config.home.homeDirectory}/.composer";
    GEMINI_API_KEY = "AIzaSyBHPwwVIzVjMTPsafksZrY1AIZKQpTeJwc";
    XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
  };

  # --- Habilitar Home Manager para gestionarse a sí mismo ---
  programs.home-manager.enable = true;

  # --- Configuración de programas gestionados por Home Manager ---

  programs.neovim = {
    enable = true;
  };

  programs.kitty = {
    enable = false;
    font = {
      name = "Hack Nerd Font Mono"; # Verifica que la fuente esté disponible y el nombre sea exacto
      size = 12;
    };
    settings = {
      allow_remote_control = "yes";
      enable_audio_bell = false;
      adjust_line_height = "130%";
      close_on_child_death = true;
      window_padding_width = 0;
      hide_window_decorations = false; # Cambiado de 'None' a booleano si es necesario
      confirm_os_window_close = 0;
    };
    extraConfig = ''
      # Si quieres que Kitty inicie tmux automáticamente, puedes descomentar esto.
      # Sin embargo, dado que gestionas tmux con programs.tmux, puede ser redundante.
      shell tmux new-session -A -s Main
    '';
  };

  programs.alacritty = {
    enable = false; # Mantenido como deshabilitado según tu config original
    settings = {
      window.padding = { x = 4; y = 4; };
      window.decorations = "None";
      window.opacity = 0.8;
      window.startup_mode = "Maximized";
      window.blur = true;
      font.normal = { family = "Hack Nerd Font Mono"; style = "Regular"; };
      font.size = 10;
      cursor.style = "Block";
      cursor.unfocused_hollow = true;
      env.TERM = "xterm-256color";
    };
  };

  programs.ripgrep = {
    enable = true;
    arguments = [
      "--smart-case"
    ];
  };

  programs.tmux = {
    enable = true;
    terminal = "xterm-256color"; # O "tmux-256color"
    # historyLimit = 100000; # Descomenta si quieres establecer un límite
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.tmux-fzf
      tmuxPlugins.vim-tmux-navigator
      {
        plugin = tmuxPlugins.tokyo-night-tmux;
        extraConfig = ''
          set -g @tokyo-night-tmux_show_datetime 0
          set -g @tokyo-night-tmux_show_git 0
          set -g @tokyo-night-tmux_show_battery_widget 0
          set -g @tokyo-night-tmux_show_path 1
          set -g @tokyo-night-tmux_window_id_style none
          # set -g @tokyo-night-tmux_window_id_style none # Esta línea estaba duplicada
        '';
      }
    ];
    extraConfig = ''
      # --- Tu configuración extra de Tmux ---
      # (Copiada de tu configuración original)
      set -g default-terminal "tmux-256color"
      # set -g default-terminal "screen-256color" # Puedes tener solo una

      # action key
      unbind C-b
      set-option -g prefix C-t
      set-option -g repeat-time 0
      set-option -g focus-events on

      #### Key bindings
      set-window-option -g mode-keys vi

      # Reload settings
      bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!" # Asegúrate que esta ruta sea la correcta gestionada por HM o usa la ruta del Nix store
      # Open current directory
      bind o run-shell "open #{pane_current_path}" # 'open' es más común en macOS, en Linux podrías usar 'xdg-open'
      bind -r e kill-pane -a

      # vim-like pane switching
      bind -r k select-pane -U
      bind -r j select-pane -D
      bind -r h select-pane -L
      bind -r l select-pane -R

      # Moving window
      bind-key -n C-S-Left swap-window -t -1 \; previous-window
      bind-key -n C-S-Right swap-window -t +1 \; next-window

      # Resizing pane
      bind -r C-k resize-pane -U 5
      bind -r C-j resize-pane -D 5
      bind -r C-h resize-pane -L 5
      bind -r C-l resize-pane -R 5

      #### basic settings
      set-option -g mouse on
      set-option -g status-justify "left"
      set-window-option -g mode-keys vi
      set-option -g history-limit 64096
      set -sg escape-time 10 # Reducido a 10ms

      #### COLOUR (Usando tu tema tokyo-night, algunas de estas pueden ser redundantes)
      # default statusbar colors
      # set-option -g status-style bg=colour235,fg=colour136,default # Probablemente sobreescrito por el tema

      # default window title colors
      # set-window-option -g window-status-style fg=colour244,bg=colour234,dim # Probablemente sobreescrito por el tema

      # active window title colors
      # set-window-option -g window-status-current-style fg=colour166,bg=default,bright # Probablemente sobreescrito por el tema

      # pane border
      set-option -g pane-border-style fg=colour235 #base02
      set-option -g pane-active-border-style fg=colour136,bg=colour235 # Puedes ajustar si el tema no lo hace

      # message text
      set-option -g message-style bg=colour235,fg=colour166

      # pane number display
      set-option -g display-panes-active-colour colour33 #blue
      set-option -g display-panes-colour colour166 #orange

      # clock
      set-window-option -g clock-mode-colour colour64 #green

      # allow the title bar to adapt to whatever host you connect to
      set -g set-titles on
      set -g set-titles-string "#T"

      # import (Comentado ya que no parece haber un macos.conf gestionado aquí)
      # if-shell "uname -s | grep -q Darwin" "source ~/.config/tmux/macos.conf"

      # Split pane using | and -
      bind / split-window -h -c "#{pane_current_path}" # Añadido -c para mantener directorio
      bind - split-window -v -c "#{pane_current_path}" # Añadido -c para mantener directorio
      unbind %
      unbind '"'

      # clipboard (Asegúrate que xclip esté instalado y funcione)
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip -selection clipboard -in"
      # Alternativa para Wayland (si usas wl-clipboard):
      # bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "wl-copy"

      set -sg escape-time 0 # Reducido a 0ms para respuesta instantánea de Vi keys
      set -g status-interval 1 # Actualizar status bar cada segundo (0 puede consumir CPU)
      set -g status-position top
    '';
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Muestra fastfetch al inicio
      fastfetch
      tmux new -s Main

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
      set -gx PATH "$PATH:${config.home.homeDirectory}/.composer/vendor/bin"

      # --- Inicializar FNM (Node Version Manager) ---
      # Asegúrate que fnm esté en home.packages
      fnm env --use-on-cd | source
    '';
    shellAliases = {
      ll = "exa -l -g --icons";
      lla = "ll -a"; # Añadido --git
      tree = "exa --tree --level=2 --icons"; # Nivel 2 por defecto
      vim = "nvim";
      g = "git"; # Cambiado a lazygit según tus paquetes
      cat = "bat"; # Usar bat si está disponible (añade pkgs.bat a home.packages si quieres)
    };
  };

}
