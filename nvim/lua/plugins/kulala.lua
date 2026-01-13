return {
	"mistweaverco/kulala.nvim",
	keys = {
		{
			"<leader>R",
			function()
				require("kulala").run()
			end,
			desc = "Run HTTP Request",
		},
		{
			"<leader>[",
			function()
				require("kulala").jump_prev()
			end,
			desc = "Jump to prev HTTP Request",
		},
		{
			"<leader>]",
			function()
				require("kulala").jump_next()
			end,
			desc = "Jump to next HTTP Request",
		},
	},
	opts = {},
}
