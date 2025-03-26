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
	# pkgs.neovim
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
      set -g terminal-overrides "xterm-256color"
      set -ga terminal-overrides ",xterm-256color:Tc"
      set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
      set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'

      set -s escape-time 0

      set -g mouse on

      unbind C-b
      set -g prefix C-t

      set -g base-index 1
      set -wg pane-base-index 1

      set -wg mode-keys vi
      unbind H
      bind H resize-pane -L 5
      unbind J
      bind J resize-pane -D 5
      unbind K
      bind K resize-pane -U 5
      unbind L
      bind L resize-pane -R 5

      # Fzf key bindings
      unbind p
      unbind P
      bind p display-popup -w 80% -h 40% -E '$HOME/.config/tmux/z_registry.sh && SESSION_WIZARD_CMD="nvim" $HOME/.config/tmux/session-wizard.sh'
      bind P display-popup -w 80% -h 40% -E '$HOME/.config/tmux/z_registry.sh && $HOME/.config/tmux/session-wizard.sh'

      # Set status bar to top
      set -g status-position top

      # xterm keys compatibility
      set-option -g xterm-keys on

      # Go back to main
      unbind m
      bind-key -r m run-shell '$HOME/.config/tmux/tmux.sh'

      # Lazygit quick access
      unbind g
      bind-key -r g run-shell 'tmux neww lazygit'

      # Reload tmux config
      unbind b
      bind b source-file $HOME/.config/tmux/tmux.conf \; display-message "Config reloaded"

      # Kill session with D
      unbind D
      bind D run-shell '$HOME/.config/tmux/tmux-killer.sh session'

      # Close window with X
      unbind X
      bind X run-shell '$HOME/.config/tmux/tmux-killer.sh window'

      # Close with x not ask for confirmation
      unbind x
      bind x run-shell '$HOME/.config/tmux/tmux-killer.sh pane'
    '';
  };

  programs.fish = {
	enable = true;	
	interactiveShellInit = ''
		fastfetch

		fish_vi_key_bindings
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

		set -g fish_key_bindings
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
