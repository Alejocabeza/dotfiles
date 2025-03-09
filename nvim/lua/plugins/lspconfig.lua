return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		{ "j-hui/fidget.nvim", opts = {} },
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					{ path = "${3rd}/love2d/library", words = { "love" } },
				},
			},
		},
	},
	opts = {
		diagnostics = {
			underline = true,
			update_in_insert = false,
			virtual_text = {
				spacing = 4,
				source = "if_many",
				prefix = "●",
			},
			severity_sort = true,
		},
		inlay_hints = {
			enabled = true,
			exclude = { "vue" },
		},
		codelens = {
			enabled = false,
		},
		capabilities = {
			workspace = {
				fileOperations = {
					didRename = true,
					willRename = true,
				},
			},
		},
		format = {
			formatting_options = nil,
			timeout_ms = nil,
		},
		servers = {
			lua_ls = {
				settings = {
					Lua = {
						workspace = {
							checkThirdParty = false,
						},
						codelens = {
							enable = true,
						},
						completion = {
							callSnippet = "Replace",
						},
						doc = {
							privateName = { "^_" },
						},
						diagnostics = {
							globals = { "vim" },
							disable = { "missing-fields" },
						},
						hint = {
							enable = true,
							setType = false,
							paramType = true,
							paramName = "Disable",
							semicolon = "Disable",
							arrayIndex = "Disable",
						},
					},
				},
			},
			tailwindcss = {
				root_dir = function(...)
					return require("lspconfig.util").root_pattern(".git")(...)
				end,
			},
			vtsls = {
				settings = {
					typescript = {
						inlayHints = {
							enumMemberValues = { enabled = false },
							functionLikeReturnTypes = { enabled = false },
							parameterNames = { enabled = false },
							parameterTypes = { enabled = false },
							propertyDeclarationTypes = { enabled = false },
							variableTypes = { enabled = false },
						},
					},
				},
			},
			phpactor = {
				init_options = {
					["language_server_configuration.auto_config"] = false,
					["language_server_worse_reflection.inlay_hints.enable"] = true,
					["language_server_worse_reflection.inlay_hints.types"] = false,
					["language_server_worse_reflection.inlay_hints.params"] = true,
					["code_transform.import_globals"] = true,
					["phpunit.enabled"] = true,
					["indexer.exclude_patterns"] = {
						"/vendor/**/Tests/**/*",
						"/vendor/**/tests/**/*",
						"/var/cache/**/*",
						"/vendor/composer/**/*",
					},
					["php_code_sniffer.enabled"] = true,
					["php_code_sniffer.bin"] = "%project_root%/bin/phpcs",

					["language_server_phpstan.enabled"] = true,
					["language_server_phpstan.level"] = "7",
					["language_server_phpstan.bin"] = "%project_root%/bin/phpstan",
					["language_server_phpstan.mem_limit"] = "2048M",
				},
			},
			ts_ls = {
				root_dir = function(...)
					return require("lspconfig.util").root_pattern(".git")(...)
				end,
				single_file_support = false,
				settings = {
					excludeFiles = { "**/node_modules/**", "**/dist/**" },
					typescript = {
						inlayHints = {
							includeInlayParameterNameHints = "literal",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = false,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					},
					javascript = {
						inlayHints = {
							includeInlayParameterNameHints = "all",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = true,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					},
				},
			},
			html = {},
			yamlls = {
				settings = {
					yaml = {
						keyOrdering = false,
					},
				},
			},
			eslint = {},
		},
		setup = {},
	},
	config = function(_, opts)
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local servers = opts.servers
		local ensure_installed = vim.tbl_keys(servers or {})
		local mlsp = require("mason-lspconfig")
		local setup = function(server_name)
			local lspconfig = require("lspconfig")
			local server = servers[server_name] or {}
			server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
			lspconfig[server_name].setup(server)
		end
		mlsp.setup({
			ensure_installed = ensure_installed, -- Only lsp servers here.
			handlers = { setup },
		})
	end,
}
