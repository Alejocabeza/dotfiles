--[[
  Laravel.nvim solo se carga en proyectos Laravel.
  Detecta buscando vendor/laravel hacia arriba desde el directorio actual.
  Si no es un proyecto Laravel, retorna config vacía (no carga el plugin).
--]]
local function is_laravel_project()
  -- Busca hacia arriba hasta encontrar vendor/ con laravel/
  local current = vim.fn.getcwd()
  local root = vim.fn.finddir("vendor", current .. ";")
  if root == "" then
    return false
  end
  return vim.fn.isdirectory(root .. "/laravel") == 1
end

-- Si no es Laravel, no cargar el plugin
if not is_laravel_project() then
  return {}
end

-- Crear directorio para archivos temporales de laravel.nvim
local nvim_laravel_dir = vim.fn.getcwd() .. "/vendor/nvim-laravel"
if vim.fn.isdirectory(nvim_laravel_dir) == 0 then
  vim.fn.mkdir(nvim_laravel_dir, "p")
end

local dir_path = vim.fn.expand("~/code/plugins/laravel.nvim")
local dir_exists = vim.fn.isdirectory(dir_path) == 1

return {
  "adalessa/laravel.nvim",
  enabled = require("nixCatsUtils").enableForCategory("laravel"),
  dir = dir_exists and dir_path or nil,
  dependencies = {
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
  },
  cmd = { "Laravel" },
  keys = {
    {
      "<leader>ll",
      function()
        Laravel.pickers.laravel()
      end,
      desc = "Laravel: Open Laravel Picker",
    },
    {
      "<c-g>",
      function()
        Laravel.commands.run("view:finder")
      end,
      desc = "Laravel: Open View Finder",
    },
    {
      "<leader>la",
      function()
        Laravel.pickers.artisan()
      end,
      desc = "Laravel: Open Artisan Picker",
    },
    {
      "<leader>lt",
      function()
        Laravel.commands.run("actions")
      end,
      desc = "Laravel: Open Actions Picker",
    },
    {
      "<leader>lr",
      function()
        Laravel.pickers.routes()
      end,
      desc = "Laravel: Open Routes Picker",
    },
    {
      "<leader>lh",
      function()
        Laravel.run("artisan docs")
      end,
      desc = "Laravel: Open Documentation",
    },
    {
      "<leader>lm",
      function()
        Laravel.pickers.make()
      end,
      desc = "Laravel: Open Make Picker",
    },
    {
      "<leader>lc",
      function()
        Laravel.pickers.commands()
      end,
      desc = "Laravel: Open Commands Picker",
    },
    {
      "<leader>lo",
      function()
        Laravel.pickers.resources()
      end,
      desc = "Laravel: Open Resources Picker",
    },
    {
      "<leader>lp",
      function()
        Laravel.commands.run("command_center")
      end,
      desc = "Laravel: Open Command Center",
    },
    {
      "gf",
      function()
        local ok, res = pcall(function()
          if Laravel.app("gf").cursorOnResource() then
            return "<cmd>lua Laravel.commands.run('gf')<cr>"
          end
        end)
        if not ok or not res then
          return "gf"
        end
        return res
      end,
      expr = true,
      noremap = true,
    },
  },
  event = { "VeryLazy" },
  opts = {
    lsp_server = "phpactor",
    features = {
      pickers = {
        provider = "snacks",
      },
    },
    user_commands = {
      composer = {
        quality = {
          cmd = { "quality" },
          desc = "Runs the quality script in composer.json",
        },
      },
    },
  },
}
