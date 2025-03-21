return { -- Collection of various small independent plugins/modules
  "echasnovski/mini.nvim",
  config = function()
    -- AI Plugin
    require("mini.ai").setup({ n_lines = 500 })
    -- Sorround Plugin
    require("mini.surround").setup()
    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font })
    statusline.section_location = function()
      return "%2l:%-2v"
    end
    -- Pairs Plugin
    require("mini.pairs").setup({
      modes = { insert = true, command = true, terminal = false },
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
    })

    -- Icons Plugin
    package.preload['nvim-web-devicons']  = function ()
      require('mini.icons').mock_nvim_web_devicons()
      return package.preload('nvim-web-devicons');
    end
  end,
}
