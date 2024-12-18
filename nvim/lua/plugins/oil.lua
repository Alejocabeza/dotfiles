return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "permission",
      "size",
      "mtime",
    },
    delete_to_trash = false,
    use_default_keymaps = true,
    view_options = {
      show_hidden = true,
    },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}
