return {
  {
    "saghen/blink.compat",
    version = "*",
    lazy = true,
    opts = {},
  },
  {
    "saghen/blink.cmp",
    lazy = false,
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
    },

    version = "*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "default",
        ["<S-Tab>"] = {},
        ["<Tab>"] = {},
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-j>"] = { "snippet_backward", "fallback" },
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
          local sources = { "lsp", "path", "snippets" }
          if
            require("nixCatsUtils").enableForCategory("laravel")
            and vim.bo.filetype == "php"
            and vim.fn.filereadable("artisan") == 1
          then
            table.insert(sources, "laravel")
          end

          if vim.tbl_contains({ "sql", "mysq", "plsql" }, vim.bo.filetype) then
            return { "dadbod", "snippets" }
          end

          if vim.tbl_contains({ "markdown" }, vim.bo.filetype) then
            return { "buffer", "path", "snippets" }
          end
          if require("nixCatsUtils").enableForCategory("copilot") then
            table.insert(sources, "copilot")
          end

          return sources
        end,
        providers = {
          laravel = {
            name = "laravel",
            module = "blink.compat.source",
            score_offset = 95, -- show at a higher priority than lsp
          },
          dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
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
      if require("nixCatsUtils").isNixCats then
        opts.fuzzy = { prebuilt_binaries = { download = false } }
      end

      require("blink-cmp").setup(opts)
    end,
  },
}
