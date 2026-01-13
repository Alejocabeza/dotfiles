return {
	{
		"neovim/nvim-lspconfig",
		url = "git@github.com:neovim/nvim-lspconfig.git",
		dependencies = {
			{
				"williamboman/mason.nvim",
				url = "git@github.com:williamboman/mason.nvim.git",
				config = true,
				enabled = require("nixCatsUtils").lazyAdd(true, false), -- Enable only if NOT using NixCats
			},
			{
				"williamboman/mason-lspconfig.nvim",
				url = "git@github.com:williamboman/mason-lspconfig.nvim.git",
				enabled = require("nixCatsUtils").lazyAdd(true, false),
			},
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				url = "git@github.com:WhoIsSethDaniel/mason-tool-installer.nvim.git",
				enabled = require("nixCatsUtils").lazyAdd(true, false),
			},
			{ "j-hui/fidget.nvim", url = "git@github.com:j-hui/fidget.nvim.git" },
			{ "folke/neodev.nvim", url = "git@github.com:folke/neodev.nvim.git" },
			{ "saghen/blink.cmp", url = "git@github.com:saghen/blink.cmp.git" },
		},
		config = function()
			local highlight_augroup = vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = true })

			vim.api.nvim_create_autocmd("LspDetach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
				callback = function(event)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event.buf })
				end,
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
				callback = function(event)
					local map = function(keys, func, desc, mode)
						mode = mode or "n"
						vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = desc })
					end
					map("grn", vim.lsp.buf.rename, "[R]e[n]ame")
					map("gra", vim.lsp.buf.code_action, "[G]oto Code [A]ction", { "n", "x" })
					map("grr", require("snacks").picker.lsp_references, "[G]oto [R]eferences")
					map("gri", require("snacks").picker.lsp_implementations, "[G]oto [I]mplementations")
					map("grd", require("snacks").picker.lsp_definitions, "[G]oto [D]efinition")
					map("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
					map("gD", require("snacks").picker.lsp_symbols, "Goto Document Symbol")
					map("gW", require("snacks").picker.lsp_workspace_symbols, "Goto [W]orkspace Symbol")
					map("grt", require("snacks").picker.lsp_type_definitions, "Goto [T]ype Definition")

					local client = vim.lsp.get_client_by_id(event.data.client_id)
					if client and client.server_capabilities.documentHighlightProvider then
						vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
							buffer = event.buf,
							group = highlight_augroup,
							callback = vim.lsp.buf.document_highlight,
						})

						vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
							buffer = event.buf,
							group = highlight_augroup,
							callback = vim.lsp.buf.clear_references,
						})
					end

					if client and client.server_capabilities.inlayHintProvider then
						map("<leader>th", function()
							vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
						end, "[T]oggle Inlay [H]ints")
					end
				end,
			})
			local diagnostics = require("setup.lsp.diagnostics")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local servers = require("setup.lsp.servers")

			-- Check if we are running inside NixCats
			if require("nixCatsUtils").isNixCats then
				-- In NixCats, we assume dependencies are managed by Nix.
				-- We directly setup servers without Mason.
				for server_name, server_config in pairs(servers) do
					server_config.capabilities = vim.tbl_deep_extend("force", server_config.capabilities or {}, capabilities)
					-- Check if lspconfig has the server before setting it up to avoid errors with custom servers or missing binaries
					-- Also handle 'volar' case if lspconfig doesn't have it directly exposed under that key (it should be 'volar' though)
					local lspconfig = require("lspconfig")
					-- Use pcall to safely access lspconfig[server_name] as it might error if server definition is missing/broken
					local ok, config = pcall(function() return lspconfig[server_name] end)
					if ok and config then
						config.setup(server_config)
					end
				end
			else
				-- Outside NixCats, use Mason to manage dependencies
				require("mason").setup()

				-- Filter out servers that Mason fails to install or are problematic
				local servers_to_install = vim.tbl_keys(servers or {})
				servers_to_install = vim.tbl_filter(function(name)
					return name ~= "sqls" and name ~= "volar" -- Exclude sqls (requires go) and volar (name mismatch issues sometimes)
				end, servers_to_install)

				-- Configure mason-lspconfig to automatically install and setup servers.
				require("mason-lspconfig").setup({
					ensure_installed = servers_to_install,
					handlers = {
						function(server_name)
							local server = servers[server_name] or {}
							server.capabilities = vim.tbl_deep_extend("force", server.capabilities or {}, capabilities)
							-- Add safety check for server existence in lspconfig
							local lspconfig = require("lspconfig")
							-- Use pcall to safely access lspconfig[server_name]
							local ok, config = pcall(function() return lspconfig[server_name] end)
							if ok and config then
								config.setup(server)
							end
						end,
					},
				})

				-- Manually setup excluded servers if they happen to be installed or needed
				-- For volar, we try to set it up even if not ensured by mason-lspconfig, 
				-- assuming user might install it manually via :Mason or it is vue-language-server
				-- if servers["volar"] then
				-- 	local lspconfig = require("lspconfig")
				-- 	-- Check if volar config exists in lspconfig to prevent errors
				-- 	if lspconfig["volar"] then
				-- 		lspconfig["volar"].setup(vim.tbl_deep_extend("force", servers["volar"] or {}, { capabilities = capabilities }))
				-- 	end
				-- end

				require("mason-tool-installer").setup({
					ensure_installed = {
						"stylua",
						"blade-formatter",
						"prettier",
						"eslint_d",
						"shfmt",
						"jq",
						"tlint",
						"pint",
						"luacheck",
						"sqlfluff",
						"php-debug-adapter",
					},
				})
			end
		end,
	},
}
