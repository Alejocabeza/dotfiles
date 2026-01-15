return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	tag = "v0.9.3",
	build = require("nixCatsUtils").lazyAdd(":TSUpdate"),
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	lazy = false,
	opts = {
		-- NOTE: nixCats: use lazyAdd to only set these 2 options if nix wasnt involved.
		-- because nix already ensured they were installed.
		ensure_installed = require("nixCatsUtils").lazyAdd({
			"bash",
			"c",
			"diff",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"luadoc",
			"luap",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"toml",
			"regex",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"xml",
			"yaml",
			"php",
			"css",
		}),
		auto_install = require("nixCatsUtils").lazyAdd(true, false),

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = { enable = true, disable = { "ruby" } },

		textobjects = {
			select = {
				enable = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
				},
			},
		},
	},
	config = function(_, opts)
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}
		vim.filetype.add({
			pattern = {
				[".*%.blade%.php"] = {
					function(path, bufnr, ext)
						local firstLine = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ""
						if vim.startswith(firstLine, "<?php") then
							return "php"
						end

						return "blade"
					end,
					{ priority = math.huge, name = "blade" },
				},
			},
		})

		-- Prefer git instead of curl in order to improve connectivity in some environments
		require("nvim-treesitter.install").prefer_git = true
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)

		-- Manually ensure blade is installed after config is registered
		require("nvim-treesitter.install").ensure_installed({ "blade" })

		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		--
		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
	end,
}
