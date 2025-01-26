-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 0
opt.laststatus = 3
opt.cmdheight = 0
opt.clipboard = { "unnamedplus" }

vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1
vim.g.lazyvim_picker = "telescope"
vim.opt.updatetime = 300
