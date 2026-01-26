return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>e",
			function()
				require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
			end,
			desc = "Open Mini Files",
		},
	},
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.pairs").setup()
		-- require("mini.statusline").setup()
		-- require('mini.animate').setup()
		require('mini.cursorword').setup()
		require('mini.hipatterns').setup()
		-- require('mini.files').setup()

		-- local statusline = require("mini.statusline")
		-- statusline.setup({ use_icons = vim.g.have_nerd_font })

		---@diagnostic disable-next-line: duplicate-set-field
		-- statusline.section_location = function()
		-- 	return "%2l:%-2v"
		-- end
	end,
}
