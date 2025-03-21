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
bind \cd 'find_directory' repaint
bind -M insert \cd 'find_directory' repaint
bind \cf 'find_files' repaint
bind -M insert \cf 'find_files' repaint
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
