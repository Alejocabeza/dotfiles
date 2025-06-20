return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<S-Tab>"] = {},
      ["<Tab>"] = {},
      ["<C-y>"] = {},
      ["<CR>"] = { "select_and_accept", "fallback_to_mappings" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-k>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-j>"] = { "select_next", "fallback_to_mappings" },
    },
    completion = {
      menu = {
        winblend = vim.o.pumblend,
      },
    },
    signature = {
      window = {
        winblend = vim.o.pumblend,
      },
    },
  },
}
