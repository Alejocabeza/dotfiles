return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	config = function()
		vim.o.foldcolumn = "1" -- '0' para ocultar, '1' para mostrar 1 columna
		vim.o.foldlevel = 99 -- Necesario para ufo (valores altos)
		vim.o.foldlevelstart = 99 -- Abrir todos los folds al inicio
		vim.o.foldenable = true -- Habilitar folding
		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
			preview = {
				win_config = {
					border = "rounded",
					winhighlight = "Normal:Folded",
					maxheight = 20,
				},
			},
			fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
				local newVirtText = {}
				local suffix = (" 󰁂 %d lines"):format(endLnum - lnum)
				local sufWidth = vim.fn.strdisplaywidth(suffix)
				local targetWidth = width - sufWidth
				local curWidth = 0
				for _, chunk in ipairs(virtText) do
					local chunkText = chunk[1]
					local chunkWidth = vim.fn.strdisplaywidth(chunkText)
					if targetWidth > curWidth + chunkWidth then
						table.insert(newVirtText, chunk)
					else
						chunkText = truncate(chunkText, targetWidth - curWidth)
						local hlGroup = chunk[2]
						table.insert(newVirtText, { chunkText, hlGroup })
						chunkWidth = vim.fn.strdisplaywidth(chunkText)
						if curWidth + chunkWidth < targetWidth then
							suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
						end
						break
					end
					curWidth = curWidth + chunkWidth
				end
				table.insert(newVirtText, { suffix, "MoreMsg" })
				return newVirtText
			end,
		})
	end,
	keys = {
		{
			"zc",
			function()
				-- Usar comando nativo para cerrar fold bajo el cursor
				vim.cmd('normal! zc')
			end,
			desc = "󰘖 Close fold under cursor",
		},
		{
			"zo",
			function()
				-- Usar comando nativo para abrir fold bajo el cursor
				vim.cmd('normal! zo')
			end,
			desc = "󰘖 Open fold under cursor",
		},
		{
			"za",
			function()
				-- No existe API directa para abrir/cerrar un fold con ufo
				-- Usamos el comando normal de Vim para alternar (za)
				vim.cmd('normal! za')
			end,
			desc = "󰘖 Toggle fold under cursor",
		},
		-- Abrir/Cerrar todos los folds
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			desc = "󰘖 Open all folds",
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			desc = "󰘖 Close all folds",
		},
		-- Niveles de folding (similar a VSCode)
		{
			"zK",
			function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end,
			desc = "󰘖 Peek fold under cursor",
		},
		-- Navegación entre folds
		{
			"[z",
			function()
				vim.cmd("normal! zk")
			end,
			desc = "󰘖 Previous fold",
		},
		{
			"]z",
			function()
				vim.cmd("normal! zj")
			end,
			desc = "󰘖 Next fold",
		},
	},
}
