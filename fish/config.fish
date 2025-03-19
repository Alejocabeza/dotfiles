# eval (ssh-agent -c)
# eval (ssh-add ~/.ssh/github)
# eval (ssh-add ~/.ssh/bitbucket)
#tmux
fastfetch 
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
set fish_greeting ""
set -gx TERM xterm-256color



# Keymap
bind -M insert \cc kill-whole-line repaint
bind \cw 'find_workspace_directory' repaint
bind \cf 'find_current_directory' repaint
bind \cl 'find_container_docker_and_run_bash' repaint

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias vim nvim
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim
set -g fish_key_bindings fish_vi_key_bindings # Vi Mode
set -g fzf_key_bindings
set -g fish_sequence_key_delay_ms 10
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH
 
switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

# laravel cli
set -gx PATH $PATH (composer global config --absolute bin-dir)

# starship
# starship init fish | source

# Added by LM Studio CLI (lms)
# set -gx PATH $PATH /home/alejocabeza/.lmstudio/bin

function find_workspace_directory
    find $HOME/workspace/ -mindepth 1 -maxdepth 1 -type d | fzf | read selected; if test -n "$selected"; cd "$selected"; end
end

function find_current_directory
  find . -mindepth 1 -maxdepth 1 | fzf | read selected
  if test -n "$selected"
    if test -f "$selected"
      nvim "$selected"
    else if test -d "$selected"
      cd "$selected"
      find_current_directory
    end
  end
end

function find_container_docker_and_run_bash
    docker ps --format '{{.Names}}' | fzf | read selected; if test -n "$selected"; docker exec -it $selected bash; end
end
