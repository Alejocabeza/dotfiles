	return {
	"mfussenegger/nvim-dap",
	dependencies = {
		-- Adapter para Node.js
		"mxsdev/nvim-dap-vscode-js",
		-- Adapter para React Native
		"sultanahamer/nvim-dap-reactnative",
	},
	config = function()
		local dap = require("dap")

		vim.fn.sign_define("DapBreakpoint", {
			text = " ",
			texthl = "DiagnosticSignError",
		})
		vim.fn.sign_define("DapBreakpointCondition", {
			text = " ",
			texthl = "DiagnosticSignWarn",
		})
		vim.fn.sign_define("DapStopped", {
			text = " ",
			texthl = "DiagnosticSignInfo",
		})
		vim.fn.sign_define("DapLogPoint", {
			text = " ",
			texthl = "DiagnosticSignInfo",
		})

		-- Configuración de Node.js Debugging
		if require("nixCatsUtils").enableForCategory("javascript") then
			-- Adapter para Node.js usando vscode-js-debug
			require("dap-vscode-js").setup({
				debugger_path = { "${extensionPath}/js-debug" },
				adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "node" },
			})

			-- ============================================
			-- Configuraciones de debugging JavaScript/TypeScript
			-- ============================================
			dap.configurations.javascript = {
				-- Launch Program
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch Program",
					skipFiles = { "<node_internals>/**" },
					program = "${workspaceFolder}/${file}",
					cwd = "${workspaceFolder}",
				},
				-- Node: Current File (ESM)
				{
					type = "pwa-node",
					request = "launch",
					name = "Node: Current File (ESM)",
					skipFiles = { "<node_internals>/**" },
					program = "${file}",
					cwd = "${workspaceFolder}",
					runtimeExecutable = "node",
					runtimeArgs = { "--loader", "ts-node/esm" },
				},
				-- Node: Jest
				{
					type = "pwa-node",
					request = "launch",
					name = "Node: Jest",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npx",
					runtimeArgs = { "jest", "--runInBand" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
				-- Node: Vitest
				{
					type = "pwa-node",
					request = "launch",
					name = "Node: Vitest",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npx",
					runtimeArgs = { "vitest", "run" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
				-- Attach to Node Process
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach to Node Process",
					skipFiles = { "<node_internals>/**" },
					port = 9229,
					restart = true,
					localRoot = "${workspaceFolder}",
				},
				-- ============================================
				-- Next.js Debug Configurations
				-- ============================================
				{
					type = "pwa-node",
					request = "launch",
					name = "Next.js: Debug Server-side",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npm",
					runtimeArgs = { "run", "dev" },
					cwd = "${workspaceFolder}",
					env = {
						NODE_ENV = "development",
					},
					console = "integratedTerminal",
				},
				{
					type = "pwa-chrome",
					request = "launch",
					name = "Next.js: Debug Client-side",
					url = "http://localhost:3000",
					webRoot = "${workspaceFolder}",
					skipFiles = { "<node_internals>/**" },
				},
				{
					type = "pwa-node",
					request = "launch",
					name = "Next.js: Debug Production",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npm",
					runtimeArgs = { "start" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
				-- ============================================
				-- React Native Debug Configurations
				-- ============================================
				{
					type = "reactnative",
					request = "launch",
					name = "React Native: Debug iOS",
					platform = "ios",
				},
				{
					type = "reactnative",
					request = "launch",
					name = "React Native: Debug Android",
					platform = "android",
				},
				{
					type = "pwa-node",
					request = "launch",
					name = "React Native: Metro Bundler",
					runtimeExecutable = "npx",
					runtimeArgs = { "react-native", "start" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
			}

			-- Compartir configuraciones entre types de archivo relacionados
			dap.configurations.typescript = dap.configurations.javascript
			dap.configurations.javascriptreact = dap.configurations.javascript
			dap.configurations.typescriptreact = dap.configurations.javascript
			dap.configurations.json = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Node: prisma generate",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npx",
					runtimeArgs = { "prisma", "generate" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
				{
					type = "pwa-node",
					request = "launch",
					name = "Node: prisma db push",
					skipFiles = { "<node_internals>/**" },
					runtimeExecutable = "npx",
					runtimeArgs = { "prisma", "db", "push" },
					cwd = "${workspaceFolder}",
					console = "integratedTerminal",
				},
			}
		end

		if require("nixCatsUtils").enableForCategory("symfony") then
			dap.adapters.php = {
				type = "executable",
				command = "php-debug-adapter",
			}

			dap.configurations.php = {
				{
					type = "php",
					request = "launch",
					name = "Symfony",
					port = 9003,
					pathMappings = {
						["/app"] = "${workspaceFolder}",
					},
				},
			}
		end

		if require("nixCatsUtils").enableForCategory("laravel") then
			dap.adapters.php = {
				type = "executable",
				command = "php-debug-adapter",
			}
			dap.configurations.php = {
				{
					type = "php",
					request = "launch",
					name = "Laravel",
					port = 9003,
				},
				{
					type = "php",
					request = "launch",
					name = "Laravel Sail",
					port = 9003,
					pathMappings = {
						["/var/www/html"] = "${workspaceFolder}",
					},
				},
			}
		end
	end,
}
