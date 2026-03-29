-- template-string.nvim
-- Convierte automáticamente strings a template literals cuando escribes ${}
return {
	"axelvc/template-string.nvim",
	event = { "BufReadPost", "BufNewFile" },
	ft = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
		"svelte",
		"astro",
	},
	opts = {
		-- Convertir a template string al escribir ${ dentro de comillas
		enable = true,
		-- Eliminar las comillas originales al convertir
		remove_template_trailing_quotes = true,
		-- Ignorar strings que contengan estas expresiones
		exclude = {},
		-- Languages donde está habilitado
		languages = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"svelte",
			"astro",
		},
		-- Keymaps para convertir manualmente
		keymaps = {
			{
				"<leader>crt",
				":TemplateString<CR>",
				desc = "Convert to template string",
			},
		},
	},
	config = function(_, opts)
		require("template-string").setup(opts)
	end,
}
