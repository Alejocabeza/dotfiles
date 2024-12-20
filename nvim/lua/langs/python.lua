return {
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"ninja",
				"rst",
			})
		end,
	},
	-- LSP
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
				ruff = {
					cmd_env = { RUFF_TRACE = "messages" },
					init_options = {
						settings = {
							loglevel = "error",
						},
					},
					keys = {
						{
							"<leader>co",
							require("utils.lsp").action["source.organizeImports"],
							desc = "Organize Imports",
						},
					},
				},
				pyright = {},
				basedpyright = {},
			})
		end,
	},
	-- Mason
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
				"black",
			})
		end,
	},
	-- Formatting
	{
		"stevearc/conform.nvim",
		opts = function(_, opts)
			opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
				["python"] = { "black" },
			})
		end,
	},
}
