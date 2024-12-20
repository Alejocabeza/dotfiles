return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"php",
				"php_only",
				"phpdoc",
			})
		end,
	},
	-- LSP
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
				phpactor = {
					settings = {
						phpactor = {
							filetypes = { "php" },
						},
					},
				},
				intelephense = {
					settings = {
						files = {
							maxSize = 1000000,
						},
					},
				},
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"phpcs",
				"php-cs-fixer",
			})
		end,
	},
	-- Formatting
	{
		"stevearc/conform.nvim",
		opts = function(_, opts)
			opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
				php = { "php_cs_fixer" },
			})
		end,
	},
	-- Linter
	{
		"mfussenegger/nvim-lint",
		optional = true,
		config = function(_, opts)
			opts.linters_by_ft = vim.tbl_deep_extend("force", opts.linters_by_ft or {}, {
				php = { "phpcs" },
			})
		end,
	},
}
