-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 0
opt.laststatus = 3
opt.cmdheight = 0
opt.clipboard = { "unnamedplus" }
opt.swapfile = false
opt.undofile = true
opt.wrap = true

vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1
-- Set to 'fzf' to use telescope instead of fzf
vim.g.lazyvim_picker = "fzf"
vim.opt.updatetime = 300
vim.g.lazyvim_prettier_needs_config = false
vim.g.lazyvim_eslint_auto_format = true

-- Set to "intelephense" to use intelephense instead of phpactor.
vim.g.lazyvim_php_lsp = "phpactor"
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
