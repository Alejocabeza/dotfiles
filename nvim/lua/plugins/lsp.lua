return {
	{
		"neovim/nvim-lspconfig",
		url = "git@github.com:neovim/nvim-lspconfig.git",
		dependencies = {
			{
				"williamboman/mason.nvim",
				url = "git@github.com:williamboman/mason.nvim.git",
				config = function()
					require("mason").setup()
				end,
			},
			{ "williamboman/mason-lspconfig.nvim", url = "git@github.com:williamboman/mason-lspconfig.nvim.git" },
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				url = "git@github.com:WhoIsSethDaniel/mason-tool-installer.nvim.git",
			},
			{ "j-hui/fidget.nvim", url = "git@github.com:j-hui/fidget.nvim.git" },
			{ "folke/neodev.nvim", url = "git@github.com:folke/neodev.nvim.git" },
			{ "saghen/blink.cmp", url = "git@github.com:saghen/blink.cmp.git" },
		},
		config = function()
			vim.api.nvim_create_autocmd("LspDetach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
				callback = function(event)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event.buf })
				end,
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("Kickstart-lsp-attach", { clear = true }),
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
						local highlight_augroup =
							vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = true })
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

			-- Configure mason-lspconfig to automatically install and setup servers.
			-- It knows how to map lspconfig server names to mason package names.
			require("mason-lspconfig").setup({
				ensure_installed = vim.tbl_keys(servers or {}),
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						server.capabilities = vim.tbl_deep_extend("force", server.capabilities or {}, capabilities)
						require("lspconfig")[server_name].setup(server)
					end,
				},
			})

			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					'blade-formatter',
					'prettierd',
					'php-debug-adapter'
				},
			})
		end,
	},
}
