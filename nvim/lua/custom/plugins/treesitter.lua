return {
  "nvim-treesitter/nvim-treesitter",
  build = require("nixCatsUtils").lazyAdd(":TSUpdate"),
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  opts = {
    ensure_installed = require("nixCatsUtils").lazyAdd({
      "bash",
      "c",
      "diff",
      "html",
      "lua",
      "luadoc",
      "markdown",
      "vim",
      "vimdoc",
      "php",
      "blade",
      "css",
      "javascript",
    }),
    auto_install = require("nixCatsUtils").lazyAdd(true, false),

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = { enable = true, disable = { "ruby" } },

    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup(opts)
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    }
    vim.filetype.add({
      pattern = {
        [".*%.blade%.php"] = {
          function(path, bufnr, ext)
            local firstLine = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ""
            if vim.startswith(firstLine, "<?php") then
              return "php"
            end

            return "blade"
          end,
          { priority = math.huge, name = "blade" },
        },
      },
    })
  end,
}
