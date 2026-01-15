return {
  "polarmutex/git-worktree.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>gw",
      function()
        require("telescope").extensions.git_worktree.git_worktrees()
      end,
      desc = "Git Worktrees",
    },
    {
      "<leader>gW",
      function()
        require("telescope").extensions.git_worktree.create_git_worktree()
      end,
      desc = "Create Git Worktree",
    },
  },
  config = function()
    require("git-worktree").setup({
      change_directory_command = "cd",
      update_on_change = true,
      update_on_change_command = "e .",
      clearjumps_on_change = true,
      autopush = false,
    })
  end,
}