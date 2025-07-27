local utils = require("utils")
return {
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",
      {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        name = "luasnip",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
      { "echasnovski/mini.icons", opts = {} },
      {
        "kristijanhusak/vim-dadbod-completion",
      },
      {
        "saghen/blink.compat",
        event = "InsertEnter",
        version = "*",
        lazy = true,
        opts = {},
      },
    },
    version = "*",
    opts = {
      keymap = {
        preset = "default",
        ["<S-Tab>"] = {},
        ["<Tab>"] = {},
        ['<C-y>'] = {},
        ['<CR>'] = { 'select_and_accept', 'fallback_to_mappings' },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-k>"] = { "select_prev", "fallback_to_mappings" },
        ["<C-j>"] = { "select_next", "fallback_to_mappings" },
      },
      signature = {
        enabled = true,
        trigger = {
          enabled = false,
        },
      },
      snippets = {
        preset = "luasnip",
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      sources = {
        default = function()
          local sources = { "lsp", "path", "snippets", "buffer" }

          if vim.bo.filetype == "php" and vim.fn.filereadable("artisan") == 1 then
            table.insert(sources, "laravel")
          end

          if vim.bo.filetype == "codecompanion" then
            return { "codecompanion" }
          end

          if vim.tbl_contains({ "sql", "mysql", "plsql" }, vim.bo.filetype) then
            return { "dadbod", "snippets" }
          end

          if vim.tbl_contains({ "markdown" }, vim.bo.filetype) then
            return { "buffer", "path", "snippets" }
          end

          if utils.has("copilot") then
            table.insert(sources, "copilot")
          end

          return sources
        end,
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
          laravel = {
            name = "laravel",
            module = "blink.compat.source",
          },
          dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
        },
      },
      completion = {
        menu = {
          auto_show = function(ctx)
            if vim.tbl_contains({ "markdown" }, vim.bo.filetype) then
              return false
            end
            return ctx.mode ~= "cmdline" or not vim.tbl_contains({ "/", "?" }, vim.fn.getcmdtype())
          end,
        },
      },
    },
    opts_extend = { "sources.default" },
    config = function(_, opts)
      require("blink-cmp").setup(opts)
    end,
  },
}
