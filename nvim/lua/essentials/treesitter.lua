return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			event = "VeryLazy",
			enabled = true,
			config = function()
				local move = require("nvim-treesitter.textobjects.move")
				local config = require("nvim-treesitter.configs")
				for name, fn in pairs(move) do
					if name:find("goto") == 1 then
						move[name] = function(q, ...)
							if vim.wo.diff then
								local config = configs.get_module("textobjects.move")[name]
								for key, query in pairs(config or {}) do
									if q == query and key:find("[%]%[][cC]") then
										vim.cmd("normal!" .. key)
										return
									end
								end
							end
							return fn(q, ...)
						end
					end
				end
			end,
		},
	},
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"luap",
			"bash",
			"diff",
			"fish",
			"regex",
			"printf",
			"query",
			"git_config",
			"gitcommit",
			"git_rebase",
			"gitignore",
			"gitattributes",
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "org" },
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outher",
					["if"] = "@function.inner",
					["ac"] = "@conditional.outher",
					["ic"] = "@conditional.inner",
					["al"] = "@block.outher",
					["il"] = "@block.inner",
				},
			},
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn",
				node_incremental = "grn",
				scope_incremental = "grc",
				node_incremental = "grm",
			},
		},
	},
	config = function(plug, opts)
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
				[".*%.blade%.php"] = "blade",
			},
		})

		vim.filetype.add({
			extension = {
				mdx = "mdx",
			},
		})

		vim.treesitter.language.register("markdown", "mdx")

		require(plug.main).setup(opts)
	end,
}
