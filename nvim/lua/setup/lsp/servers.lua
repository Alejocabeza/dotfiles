local cmd = { "phpactor", "language-server" }
if require("nixCatsUtils").enableForCategory("local-phpactor", false) then
	cmd = { "/home/alpha/code/php/phpactor/bin/phpactor", "language-server" }
end

return {
	lua_ls = {
		cmd = { "lua-language-server" },
		root_markers = {
			".luarc.json",
			".luarc.jsonc",
			".luacheckrc",
			".stylua.toml",
			"stylua.toml",
			"selene.toml",
			"selene.yml",
			".git",
		},
		filetypes = { "lua" },
		settings = {
			Lua = {
				completion = {
					callSnippet = "Replace",
				},
				diagnostics = {
					globals = { "nixCats", "dd", "bt" },
					disable = { "missing-fields" },
				},
			},
		},
	},
	ts_ls = {
		init_options = {
			hostInfo = "neovim",
		},
		command = { "typescript-language-server", "--stdio" },
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		root_markers = {
			"tsconfig.json",
			"jsconfig.json",
			"package.json",
			".git",
		},
		single_file_support = true,
	},
	tailwindcss = {
		cmd = { "tailwindcss-language-server", "--stdio" },
		-- filetypes copied and adjusted from tailwindcss-intellisense
		filetypes = {
			-- html
			"aspnetcorerazor",
			"astro",
			"astro-markdown",
			"blade",
			"clojure",
			"django-html",
			"htmldjango",
			"edge",
			"eelixir", -- vim ft
			"elixir",
			"ejs",
			"erb",
			"eruby", -- vim ft
			"gohtml",
			"gohtmltmpl",
			"haml",
			"handlebars",
			"hbs",
			"html",
			"htmlangular",
			"html-eex",
			"heex",
			"jade",
			"leaf",
			"liquid",
			"markdown",
			"mdx",
			"mustache",
			"njk",
			"nunjucks",
			"php",
			"razor",
			"slim",
			"twig",
			-- css
			"css",
			"less",
			"postcss",
			"sass",
			"scss",
			"stylus",
			"sugarss",
			-- js
			"javascript",
			"javascriptreact",
			"reason",
			"rescript",
			"typescript",
			"typescriptreact",
			-- mixed
			"vue",
			"svelte",
			"templ",
		},
		settings = {
			tailwindCSS = {
				validate = true,
				lint = {
					cssConflict = "warning",
					invalidApply = "error",
					invalidScreen = "error",
					invalidVariant = "error",
					invalidConfigPath = "error",
					invalidTailwindDirective = "error",
					recommendedVariantOrder = "warning",
				},
				classAttributes = {
					"class",
					"className",
					"class:list",
					"classList",
					"ngClass",
				},
				includeLanguages = {
					eelixir = "html-eex",
					eruby = "erb",
					templ = "html",
					htmlangular = "html",
				},
			},
		},
		root_markers = {
			"tailwind.config.js",
			"tailwind.config.cjs",
			"tailwind.config.mjs",
			"tailwind.config.ts",
			"postcss.config.js",
			"postcss.config.cjs",
			"postcss.config.mjs",
			"postcss.config.ts",
			"vite.config.js",
		},
	},
	rust_analyzer = {
		cmd = { "rust-analyzer" },
		filetypes = { "rust" },
		root_markers = {
			"Cargo.toml",
			".git",
		},
		settings = {
			["rust-analyzer"] = {
				check = {
					command = "clippy",
				},
				checkOnSave = true,

				inlayHints = {
					typeHints = {
						enable = true,
						hideInsideMacro = true,
					},
					parameterHints = {
						enable = true,
					},
					chainingHints = {
						enable = true,
					},
				},

				cargo = {
					loadOutDirsFromCheck = true,
				},
				procMacro = {
					enable = true,
				},
			},
		},
	},
	rnix = {
		cmd = { "rnix-lsp" },
		filetypes = { "nix" },
		root_markers = {
			".git",
		},
	},
	pylsp = {
		cmd = { "pylsp" },
		filetypes = { "python" },
		root_markers = {
			"pyproject.toml",
			"setup.py",
			"setup.cfg",
			"requirements.txt",
			"Pipfile",
		},
		single_file_support = true,
	},
	phpactor = function()
		if require("nixCatsUtils").enabledForCategory("symfony") then
			return {
				cmd = { "phpactor", "language-server" },
				root_markers = { "composer.json" },
				filetypes = { "php" },
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
			}
		end
		return {
			cmd = cmd,
			root_markers = { "composer.json" },
			filetypes = { "php", "blade" },
			init_options = {
				["language_server_configuration.auto_config"] = false,
				["language_server_worse_reflection.inlay_hints.enable"] = true,
				["language_server_worse_reflection.inlay_hints.types"] = false,
				["language_server_worse_reflection.inlay_hints.params"] = true,
				["code_transform.import_globals"] = false,
				["indexer.exclude_patterns"] = {
					"/vendor/**/Tests/**/*",
					"/vendor/**/tests/**/*",
					"/vendor/composer/**/*",
					"/vendor/laravel/fortify/workbench/**/*",
					"/vendor/filament/forms/.stubs.php",
					"/vendor/filament/notifications/.stubs.php",
					"/vendor/filament/tables/.stubs.php",
					"/vendor/filament/actions/.stubs.php",
					"/storage/framework/cache/**/*",
					"/storage/framework/views/**/*",
					"vendor/kirschbaum-development/eloquent-power-joins/.stubs.php",
					"/vendor/**/_ide_helpers.php",
				},
				["php_code_sniffer.enabled"] = false,

				["language_server_phpstan.enabled"] = false,
				["language_server_phpstan.level"] = "5",
				["language_server_phpstan.bin"] = "%project_root%/vendor/bin/phpstan",
				["language_server_phpstan.mem_limit"] = "2048M",
			},
			handlers = {
				["textDocument/publishDiagnostics"] = function(err, result, ...)
					if vim.endswith(result.uri, "Test.php") then
						result.diagnostics = vim.tbl_filter(function(diagnostic)
							return (not vim.startswith(diagnostic.message, 'Namespace should probably be "Tests'))
								and (
									not vim.endswith(
										diagnostic.message,
										"PHPUnit\\Framework\\MockObject\\MockObject given."
									)
								)
						end, result.diagnostics)
					end
					if vim.endswith(result.uri, "blade.php") then
						result.diagnostics = vim.tbl_filter(function(diagnostic)
							return (not vim.startswith(diagnostic.message, 'Undefined variable "$this"'))
						end, result.diagnostics)
					end
					vim.lsp.diagnostic.on_publish_diagnostics(err, result, ...)
				end,

				["textDocument/inlayHint"] = function(err, result, ...)
					for _, res in ipairs(result or {}) do
						if res.kind == 2 then
							res.label = res.label .. ":"
						end
						res.label = res.label .. " "
					end
					vim.lsp.handlers["textDocument/inlayHint"](err, result, ...)
				end,
			},
		}
	end,
	nil_ls = {
		cmd = { "nil" },
		filetypes = { "nix" },
		single_file_support = true,
		root_markers = {
			".git",
			"flaek.nix",
		},
	},
	emmet_language_server = {
		cmd = { "emmet-language-server", "--stdio" },
		filetypes = {
			"css",
			"html",
			"blade",
			"php",
			"javascript",
			"javascriptreact",
			"typescriptreact",
		},
		root_markers = {
			".git",
		},
	},
	astro = {
		cmd = { "astro-ls", "--stdio" },
		filetypes = { "astro" },
		root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
	},
	volar = {
		cmd = { "vue-language-server", "--stdio" },
		filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
		init_options = {
			typescript = {
				tsdk = "", -- We will let mason or nix handle this path usually, or rely on global
			},
		},
	},
	svelte = {
		cmd = { "svelteserver", "--stdio" },
		filetypes = { "svelte" },
	},
	dockerls = {
		cmd = { "docker-langserver", "--stdio" },
		filetypes = { "dockerfile" },
		root_markers = { "Dockerfile" },
	},
	jsonls = {
		cmd = { "vscode-json-language-server", "--stdio" },
		filetypes = { "json", "jsonc" },
		init_options = {
			provideFormatter = true,
		},
	},
	sqls = {
		cmd = { "sqls" },
		filetypes = { "sql" },
		root_markers = { ".git" },
	},
	clangd = {
		cmd = {
			"clangd",
			"--compile-commands-dir=.",
			"--background-index",
			"--clang-tidy",
			"--header-insertion=iwyu",
			"--completion-style=detailed",
			"--function-arg-placeholders",
			"--fallback-style=llvm",
		},
		filetypes = {
			"cpp",
		},
		root_markers = { "sdkconfig", "CMakeLists.txt", ".git" },
		-- root_dir = function(fname)
		--   if type(fname) == "number" then
		--     fname = vim.api.nvim_buf_get_name(fname)
		--   end
		--   local util = require("lspconfig.util")
		--   local git_root = vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
		--   return util.root_pattern("sdkconfig", "CMakeLists.txt")(fname) or git_root or vim.fn.getcwd()
		-- end,
		capabilities = {
			offsetEncoding = { "utf-16" },
		},
		init_options = {
			usePlaceholders = true,
			completeUnimported = true,
			clangdFileStatus = true,
		},
	},
}
