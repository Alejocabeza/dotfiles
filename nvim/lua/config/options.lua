-- =============================================================================
-- Core Setup
-- =============================================================================
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.snippets = "luasnip"

-- Fix Nerd Font detection (Assume true for modern terminals)
vim.g.have_nerd_font = true

-- =============================================================================
-- UI & Visuals
-- =============================================================================
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Relative line numbers (better for jumps)
vim.opt.signcolumn = "yes"        -- Always show sign column (prevents shift)
vim.opt.cursorline = true         -- Highlight current line
vim.opt.showmode = false          -- Don't show mode (lualine handles this)
vim.opt.laststatus = 3            -- Global statusline (one line for all splits)
vim.opt.termguicolors = true      -- True color support
vim.opt.wrap = true               -- Enable line wrapping
vim.opt.linebreak = true          -- Wrap at proper word boundaries (not in middle of word)
vim.opt.breakindent = true        -- Maintain indentation on wrapped lines

-- Whitespace chars (make invisible chars visible-ish)
vim.opt.list = true
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

-- Pmenu (Popup menu)
vim.opt.pumblend = 10             -- Pseudo-transparency for popup menu
vim.opt.pumheight = 10            -- Max items in popup menu

-- =============================================================================
-- Indentation (configurable per filetype via ftplugin)
-- =============================================================================
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.smartindent = true        -- Insert indents automatically
-- Default indent (4 spaces), overridden by ftplugin

-- =============================================================================
-- Search & Replace
-- =============================================================================
vim.opt.ignorecase = true         -- Ignore case
vim.opt.smartcase = true          -- ...unless uppercase is used
vim.opt.inccommand = "split"      -- Preview substitutions live!

-- =============================================================================
-- System Behavior
-- =============================================================================
-- Clipboard
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
end)

-- Undo & Backup
vim.opt.undofile = true           -- Persistent undo
vim.opt.swapfile = false          -- No swap files (annoying)
vim.opt.backup = false            -- No backup files

-- Timings
vim.opt.updatetime = 250          -- Faster completion/save
vim.opt.timeoutlen = 300          -- Faster key sequence completion

-- Scrolling
vim.opt.scrolloff = 8             -- Keep 8 lines context top/bottom
vim.opt.sidescrolloff = 8         -- Keep 8 cols context left/right

-- Splits
vim.opt.splitright = true         -- Put new windows right of current
vim.opt.splitbelow = true         -- Put new windows below current
vim.opt.splitkeep = "screen"      -- Keep text stable when splitting

-- Mouse
vim.opt.mouse = "a"               -- Enable mouse in all modes (scrolling, clicking)

-- =============================================================================
-- Advanced
-- =============================================================================
-- Better completion experience
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append("c")     -- Don't pass messages to |ins-completion-menu|

-- Disable built-in providers we don't use (faster startup)
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- Undercurl support for modern terminals
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- =============================================================================
-- Filetypes (Ideally move to ftplugin or autocmds.lua, but ok here)
-- =============================================================================
vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])
vim.cmd([[au BufNewFile,BufRead .env* setf sh]])
