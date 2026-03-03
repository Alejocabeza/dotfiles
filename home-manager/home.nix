# home.nix
{ config, pkgs, ... }:

# --- Bloque let para definir variables locales ---
let
  # Define tu versión de PHP base para facilitar cambios futuros
  phpBase = pkgs.php;

  # Crea una versión personalizada de PHP con las extensiones que necesitas
  phpWithMyExtensions = phpBase.withExtensions (
    { all, enabled }: enabled ++ [
      # --- La extensión clave que necesitas ---
      all.imagick

      # --- Otras extensiones comunes y recomendadas para desarrollo web/Laravel ---
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
  home.username = "alejandrocabeza";
  home.homeDirectory = "/home/alejandrocabeza";
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
    pkgs.fastfetch
    pkgs.eza
    pkgs.fzf
    pkgs.fd
    pkgs.tmux
    pkgs.lazygit
    pkgs.xclip
    pkgs.xsel
    pkgs.wl-clipboard
    pkgs.lsof
    # pkgs.wl-clipboard
    pkgs.btop
    pkgs.fnm
    pkgs.rustup
    pkgs.sqlite # Herramienta CLI de SQLite
    pkgs.postgresql # Herramientas CLI/servidor de PostgreSQL
    pkgs.delta
    #pkgs.vscode
    #pkgs.postman
    #pkgs.kitty
    pkgs.luarocks-nix
    pkgs.oh-my-fish
    pkgs.libgcc
    pkgs.bun
    pkgs.python313
    pkgs.gnumake42
    pkgs.libcdada
    pkgs.nerd-fonts.hack
    pkgs.nerd-fonts.symbols-only
    # pkgs.ghostty
  ];

  # --- Configuración de Fuentes ---
  # Habilita fontconfig para que el sistema detecte las fuentes instaladas por Home Manager
  fonts.fontconfig.enable = true;

  # --- Gestión de archivos de configuración (dotfiles) ---
  home.file = {
    ".gitconfig".source = /home/alejandrocabeza/.dotfiles/.gitconfig;
    ".config/nvim".source = /home/alejandrocabeza/.dotfiles/nvim;
    "utils".source = /home/alejandrocabeza/.dotfiles/utils;
    ".config/kitty".source = /home/alejandrocabeza/.dotfiles/kitty;
    ".bashrc".source = /home/alejandrocabeza/.dotfiles/.bashrc;
    ".config/ghostty".source = /home/alejandrocabeza/.dotfiles/ghostty;
    ".config/opencode/opencode.jsonc".source = /home/alejandrocabeza/.dotfiles/opencode/opencode.jsonc;
    ".config/fish".source = /home/alejandrocabeza/.dotfiles/fish;
    ".config/opencode/agents".source = /home/alejandrocabeza/.dotfiles/opencode/agents;
    ".config/opencode/skills".source = /home/alejandrocabeza/.dotfiles/opencode/skills;
    ".config/zed/settings.json".source = /home/alejandrocabeza/.dotfiles/zed/settings.json;
    ".config/zed/keymap.json".source = /home/alejandrocabeza/.dotfiles/zed/keymap.json;
    ".config/zed/tasks.json".source = /home/alejandrocabeza/.dotfiles/zed/tasks.json;
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

  programs.ripgrep = {
    enable = true;
    arguments = [
      "--smart-case"
    ];
  };

  programs.tmux = {
    enable = true;
    terminal = "tmux-256color"; # Cambiado a tmux-256color para mejor soporte de colores
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.tmux-fzf
      tmuxPlugins.vim-tmux-navigator
      # Eliminamos tokyo-night-tmux porque vamos a usar Gruvbox Material
    ];
    extraConfig = ''
      # --- GRUVBOX MATERIAL COLOR SCHEME ---
      set -g status-justify "left"
      set -g status-style "bg=#282828,fg=#dfbf8e" # Fondo oscuro, texto crema

      # Pane borders
      set -g pane-border-style "fg=#504945"
      set -g pane-active-border-style "fg=#a9b665" # Verde para el panel activo

      # Status bar design
      set -g status-left-length "100"
      set -g status-right-length "100"
      set -g status-left "#[fg=#282828,bg=#a9b665,bold] #S #[fg=#a9b665,bg=#282828,nobold,nounderscore,noitalics]"
      set -g status-right "#[fg=#504945,bg=#282828,nobold,nounderscore,noitalics]#[fg=#dfbf8e,bg=#504945] %Y-%m-%d  %H:%M #[fg=#a9b665,bg=#504945,nobold,nounderscore,noitalics]#[fg=#282828,bg=#a9b665,bold] #h "

      # Window tabs
      setw -g window-status-activity-style "underscore,fg=#a89984,bg=#282828"
      setw -g window-status-separator ""
      setw -g window-status-style "fg=#dfbf8e,bg=#282828"
      setw -g window-status-format "#[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]#[default] #I  #W #[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]"
      setw -g window-status-current-format "#[fg=#282828,bg=#45403d,nobold,nounderscore,noitalics]#[fg=#dfbf8e,bg=#45403d,bold] #I  #W #[fg=#45403d,bg=#282828,nobold,nounderscore,noitalics]"

      # --- Resto de tu configuración original ---
      unbind C-b
      set-option -g prefix C-t
      set-option -g repeat-time 0
      set-option -g focus-events on

      set-window-option -g mode-keys vi
      bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"
      
      # Usar wl-copy para Wayland (COSMIC/Pop!_OS)
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "wl-copy"
      
      bind o run-shell "xdg-open #{pane_current_path}"
      bind -r e kill-pane -a

      # Navegación y Resizing (tus binds anteriores)
      bind -r k select-pane -U
      bind -r j select-pane -D
      bind -r h select-pane -L
      bind -r l select-pane -R
      bind -r C-k resize-pane -U 5
      bind -r C-j resize-pane -D 5
      bind -r C-h resize-pane -L 5
      bind -r C-l resize-pane -R 5

      set-option -g mouse on
      set-option -g history-limit 64096
      set -sg escape-time 0
      set -g status-interval 1
      set -g status-position top

      bind / split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      unbind %
      unbind '"'
    '';
  };
}
