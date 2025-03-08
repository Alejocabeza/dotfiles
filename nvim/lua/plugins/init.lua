return {
	-- Lazy
	{
		"vague2k/vague.nvim",
		opts = {},
		enabled = false,
		lazy = false,
		priority = 100,
		config = function(_, opts)
			require("vague").setup(opts)
			vim.cmd.colorscheme("vague")
		end,
	},
	{
		"direnv/direnv.vim",
		init = function()
			vim.g.direnv_silent_load = 1
		end,
	},
	"echasnovski/mini.ai",
	"adalessa/php-lsp-utils",
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{ "nvzone/volt", lazy = true },
	{ "nvzone/menu", lazy = true },
	"tpope/vim-sleuth",
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"onsails/lspkind-nvim",
	"MunifTanjim/nui.nvim",
	"mg979/vim-visual-multi",
	{
		"declancm/maximize.nvim",
		config = true,
	},
	{ "Bilal2453/luvit-meta", lazy = true },
	"jwalton512/vim-blade",
	{
		"tpope/vim-dispatch",
		cmd = { "Make", "Dispatch" },
	},
	{ "folke/lazy.nvim", version = "*" },
	"lewis6991/impatient.nvim",
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"tpope/vim-rhubarb",
	"tpope/vim-dotenv",
	"tpope/vim-eunuch",
	"folke/twilight.nvim",
	"tpope/vim-surround",
	"tpope/vim-dispatch",
}
