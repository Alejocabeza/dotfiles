vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.opt_local.formatoptions = vim.opt_local.formatoptions + "t"
vim.opt_local.wrap = false

-- Configuración de TypeScript/TSX
if vim.bo.filetype == "typescriptreact" or vim.bo.filetype == "typescript.tsx" then
	vim.opt_local.filetype = "typescriptreact"
end

-- Configurar formato de archivo al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.{ts,tsx,mts,cts}",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- ============================================
-- Utilidades TypeScript (usando LSP nativo)
-- ============================================
vim.keymap.set("n", "<leader>coi", function()
	vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } } })
end, { buffer = true, desc = "TypeScript: Organize Imports" })

vim.keymap.set("n", "<leader>cai", function()
	-- Solicitar al LSP que agregue imports faltantes
	vim.lsp.buf.code_action({ context = { only = { "quickfix", "source.addMissingImports" } } })
end, { buffer = true, desc = "TypeScript: Add Missing Imports" })

vim.keymap.set("n", "<leader>crf", function()
	-- Renombrar símbolo en el archivo
	vim.lsp.buf.rename()
end, { buffer = true, desc = "TypeScript: Rename Symbol" })

vim.keymap.set("n", "<leader>cfa", function()
	-- Aplicar todas las acciones de código automáticas
	vim.lsp.buf.code_action({ context = { only = { "quickfix", "source.fixAll" } } })
end, { buffer = true, desc = "TypeScript: Fix All" })

-- Comandos de TypeScript adicionales
vim.keymap.set("n", "<leader>ctt", function()
	vim.cmd("!npx tsc --noEmit")
end, { buffer = true, desc = "TypeScript: Type Check" })

vim.keymap.set("n", "<leader>cts", function()
	vim.cmd("!npx tsc --noEmit --pretty")
end, { buffer = true, desc = "TypeScript: Type Check (Pretty)" })