return {
	"tpope/vim-sleuth",
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"onsails/lspkind-nvim",
	"MunifTanjim/nui.nvim",
	"terryma/vim-multiple-cursors",
	{
		"declancm/maximize.nvim",
		keys = {
			{ "sm", "<cmd>Maximize<cr>", desc = "Maximized Window" },
		},
		config = true,
	},
	{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	{ "Bilal2453/luvit-meta", lazy = true },
	"jwalton512/vim-blade",
	{
		"tpope/vim-dispatch",
		cmd = { "Make", "Dispatch" },
	},
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"tpope/vim-rhubarb",
	"tpope/vim-dotenv",
	"tpope/vim-eunuch",
}
