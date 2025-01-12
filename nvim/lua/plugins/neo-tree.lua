return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    window = {
      position = "left",
      width = 30,
      mappings = {
        ["Y"] = "none",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "node_modules",
          "vendor",
          "var",
          ".next",
          "dist",
        },
        always_show = {
          ".env",
        },
      },
    },
  },
}
