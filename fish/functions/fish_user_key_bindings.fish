function fish_user_key_bindings
  set -l all_vi_modes default insert visual replace_one replace

  for mode in $all_vi_modes
    bind -M $mode \cf fzf_change_directory
    bind -M $mode \co fzf_edit_file
    bind -M $mode \cr fzf_history
    bind -M $mode \ck fzf_kill_process
    bind -M $mode \cb fzf_git_branch   # Alt + b (Branch)
    bind -M $mode \cl fzf_git_log      # Alt + L (o la que elijas)
    bind -M $mode \cd delete-char
  end
end
