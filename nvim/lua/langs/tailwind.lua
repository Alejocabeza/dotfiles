return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
				tailwindcss = {
					filetypes_exclude = { "markdown" },
					filetypes_include = {},
				},
			})
		end,
	},
	{ "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
	{
		"hrsh7th/nvim-cmp",
		optional = true,
		dependencies = {
			{ "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
		},
		opts = function(_, opts)
			local format_kinds = opts.formatting.format
			opts.formatting.format = function(entry, item)
				format_kinds(entry, item) -- add icons
				return require("tailwindcss-colorizer-cmp").formatter(entry, item)
			end
		end,
	},
}
