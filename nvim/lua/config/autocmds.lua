-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
-- Destacar al yank de forma compatible con varias versiones de Neovim
local function safe_on_yank(opts)
  if vim.highlight and vim.highlight.on_yank then
    vim.highlight.on_yank(opts)
  elseif vim.hl and vim.hl.on_yank then
    vim.hl.on_yank(opts)
  end
end

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    safe_on_yank({ higroup = "IncSearch", timeout = 200, on_visual = true })
  end,
})
