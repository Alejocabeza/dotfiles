return {
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"dockerfile",
			})
		end,
	},
	-- LSP
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
				dockerls = {},
				docker_compose_language_service = {},
			})
		end,
	},
	-- Mason
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"hadolint",
			})
		end,
	},
	-- Linter
	{
		"mfussenegger/nvim-lint",
		optional = true,
		config = function(_, opts)
			opts.linters_by_ft = vim.tbl_deep_extend("force", opts.linters_by_ft or {}, {
				dockerfile = { "hadolint" },
			})
		end,
	},
}
