return {
	{
		"wuelnerdotexe/vim-enfocado",
		lazy = false,
		enabled = false,
		priority = 1000,
		init = function()
			vim.g.enfocado_style = "neon"
			vim.cmd("colorscheme enfocado")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		init = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
