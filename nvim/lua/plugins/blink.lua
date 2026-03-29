return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		-- PERFORMANCE: Lazy load para mejorar startup
		lazy = false,
		dependencies = {
			"rafamadriz/friendly-snippets",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				name = "luasnip",
				config = function()
					-- PERFORMANCE: Cargar snippets bajo demanda
					require("luasnip.loaders.from_vscode").lazy_load({ lazy = true })
					require("luasnip.loaders.from_snipmate").lazy_load()
				end,
			},
			{ "echasnovski/mini.icons", opts = {} },
		},

		version = "*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = {
				preset = "default",
				["<S-Tab>"] = {},
				["<Tab>"] = {},
				["<CR>"] = { "accept", "fallback" },
			},
			signature = {
				enabled = false, -- PERFORMANCE: Deshabilitar para mejorar rendimiento
			},

			snippets = {
				preset = "luasnip",
			},

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			-- PERFORMANCE: Configuración de fuentes optimizada
			sources = {
				-- PERFORMANCE: Usar función más simple
				default = { "lsp", "path", "snippets" },
				providers = {
					laravel = {
						name = "laravel",
						module = "blink.compat.source",
						score_offset = 95,
					},
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
					copilot = {
						name = "copilot",
						module = "blink-cmp-copilot",
						score_offset = 100,
						async = true,
					},
				},
			},
			-- PERFORMANCE: Configuraciones de rendimiento
			completion = {
				-- PERFORMANCE: Menos items para procesar
				list = {
					selection = { preselect = true, auto_insert = true },
					max_items = 50, -- Limitar items mostrados
				},
				menu = {
					auto_show = function(ctx)
						if vim.tbl_contains({ "markdown" }, vim.bo.filetype) then
							return false
						end
						return ctx.mode ~= "cmdline" or not vim.tbl_contains({ "/", "?" }, vim.fn.getcmdtype())
					end,
				},
			},
			-- PERFORMANCE: Fuzzy search optimizado
			fuzzy = {
				implementation = "lua",
			},
		},
		opts_extend = { "sources.default" },
		config = function(_, opts)
			if require("nixCatsUtils").isNixCats then
				opts.fuzzy = { prebuilt_binaries = { download = false } }
			end

			require("blink-cmp").setup(opts)
		end,
	},
}
