{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "alejocabeza";
  home.homeDirectory = "/home/alejocabeza";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes. 
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
	pkgs.fish
	pkgs.fastfetch
	pkgs.eza
	pkgs.fzf
	pkgs.fd
	pkgs.tmux
	pkgs.alacritty
	pkgs.alacritty-theme
	pkgs.lazygit
	pkgs.xclip
	pkgs.xsel
	pkgs.btop
	pkgs.php84
	pkgs.php84Packages.composer
	pkgs.fnm
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    # ".tmux.conf".source = ../tmux/tmux.conf;
    ".gitconfig".source = ../.gitconfig;
    "utils/lamp".source = ../utils/lamp;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/alejocabeza/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
    COMPOSER_HOME = "${config.home.homeDirectory}/.composer";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.neovim.enable = true;

  home.pointerCursor = {
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    size = 24;
    gtk.enable = true;
  };

  programs.alacritty = {
  	enable = true;
	settings = {
		window.padding = {
			x = 4;
			y = 4;
		};
		window.decorations = "None";
		window.opacity = 0.8;
		window.startup_mode = "Maximized";
		window.blur = true; font.normal = {
			family =  "Hack Nerd Font Mono";
			style = "Regular";
		};
		font.size = 14;
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

  # Tmux conf
  programs.tmux = {
    enable = true;
    terminal = "xterm-256color";
    # historyLimit = 100000;
    plugins = with pkgs;
      [
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
            set -g @tokyo-night-tmux_window_id_style none
          '';
        }
      ];
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -g default-terminal "screen-256color"
      # action key

      unbind C-b
      set-option -g prefix C-t
      set-option -g repeat-time 0
      set-option -g focus-events on

      #### Key bindings
      set-window-option -g mode-keys vi

      #bind t send-key C-t
      # Reload settings
      bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"
      # Open current directory
      bind o run-shell "open #{pane_current_path}"
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
      #
      set-option -g mouse on
      set-option -g status-justify "left"
      #set-option utf8-default on
      set-window-option -g mode-keys vi
      #set-window-option -g utf8 on
      # look'n feel
      set-option -g status-fg cyan
      set-option -g status-bg black
      set -g pane-active-border-style fg=colour166,bg=default
      set -g window-style fg=colour10,bg=default
      set -g window-active-style fg=colour12,bg=default
      set-option -g history-limit 64096

      set -sg escape-time 10

      #### COLOUR

      # default statusbar colors
      set-option -g status-style bg=colour235,fg=colour136,default

      # default window title colors
      set-window-option -g window-status-style fg=colour244,bg=colour234,dim

      # active window title colors
      set-window-option -g window-status-current-style fg=colour166,bg=default,bright

      # pane border
      set-option -g pane-border-style fg=colour235 #base02
      set-option -g pane-active-border-style fg=colour136,bg=colour235

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

      # import
      if-shell "uname -s | grep -q Darwin" "source ~/.config/tmux/macos.conf"

      # Split pane using | and
      bind / split-window -h
      bind - split-window -v
      unbind %
      unbind '"'

      # clipboard
      # bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xsel --clipboard --input"
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip --clipboard --input"

      set -sg escape-time 0
      set -g status-interval 0
      set -g status-position top
    '';
  };

  programs.fish = {
	enable = true;	
	interactiveShellInit = ''
		fastfetch

		set fish_greeting ""
		set -gx TERM xterm-256color

		bind -M insert \cc kill-whole-line repaint
		bind \cd 'find_directory' repaint
		bind -M insert \cd 'find_directory' repaint
		bind \cf 'find_files' repaint
		bind -M insert \cf 'find_files' repaint
		bind \cl 'find_container_docker_and_run_bash' repaint

		set -g theme_color_scheme terminal-dark
		set -g fish_prompt_pwd_dir_length 1
		set -g theme_display_user yes
		set -g theme_hide_hostname no
		set -g theme_hostname always

		fish_vi_key_bindings
		set -g fzf_key_bindings
		set -g fish_sequence_key_delay_ms 10

		function find_directory
		  fd -t d -0 -H . $HOME | fzf --print0 --read0 | read -z dir
		  if test -n "$dir"
		    if test -d "$dir"
		      cd "$dir"
		    else
		      echo "Error: '$dir' no es un directorio válido."
		    end
		  else
		    echo "No se seleccionó ningún directorio."
		  end
		end

		function find_files
		  find ~ -type f -print0 | fzf --print0 --read0 | xargs -0 -I {} nvim "{}"
		end

		function tm
		  set session_name (basename (pwd))
		  tmux new-session -s $session_name
		end

		# Añade el directorio vendor de Composer al PATH
		set -gx PATH "$PATH:${config.home.homeDirectory}/.composer/vendor/bin"

		# Inicialización de fnm
		set -l fnm_dir ~/.fnm
		status is-interactive; and source "$fnm_dir/fnm.fish"
	'';
	shellAliases = {
		ll = "exa -l -g --icons";
		lla = "ll -a";
		tree = "exa -T";
		vim = "nvim";
		g = "git";
	};
  };

}
