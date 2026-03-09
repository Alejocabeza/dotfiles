-- obsidian.nvim configuration
-- Integración con bóvedas de Obsidian desde Neovim
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = "markdown",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- Tus bóvedas de Obsidian
    workspaces = {
      {
        name = "notes",
        path = "/home/alejandrocabeza/.dotfiles/obsidean",
      },
    },

    -- Picker: snacks.picker (usa el nombre correcto)
    picker = {
      name = "snacks_picker",
    },

    -- Completado usando blink.cmp
    completion = {
      blink = true,
    },

    -- Configuración de notas diarias
    daily_notes = {
      enabled = true,
      folder = "dailies",
      date_format = "%Y-%m-%d",
    },

    -- ID de nota automático
    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub("[^a-zA-Z0-9%-]", "-"):lower()
      end
      return os.date("%Y%m%d") .. "-" .. suffix
    end,

    -- Configuración de enlaces (nueva API)
    -- wiki_link_func ahora es parte de 'link'
    preferred_link_style = "wiki",

    -- Propiedades (Obsidian format)
    properties = {
      tags = {
        -- Transformar etiquetas en formato YAML
        prepend = false,
        transform = true,
      },
    },

    -- No añadir prefijos automáticamente
    automatically_add_prefixes = false,

    -- Configuración de UI
    ui = {
      enable = true,
    },

    -- Desactivar comandos legacy si no los necesitas
    -- legacy_commands = false,
  },

  -- Configuración de comandos válidos
  cmd = {
    "ObsidianOpen",
    "ObsidianNew",
    "ObsidianSearch",
    "ObsidianDailies",
    "ObsidianToday",
    "ObsidianTomorrow",
    "ObsidianYesterday",
    "ObsidianBacklinks",
    "ObsidianTags",
    "ObsidianPasteImg",
    "ObsidianQuickSwitch",
    "ObsidianExtractNote",
    "ObsidianTemplate",
  },

  -- Configuración de keymaps globales
  keys = {
    {
      "<leader>oo",
      "<cmd>ObsidianOpen<CR>",
      desc = "Obsidian: Abrir nota",
    },
    {
      "<leader>on",
      "<cmd>ObsidianNew<CR>",
      desc = "Obsidian: Nueva nota",
    },
    {
      "<leader>os",
      "<cmd>ObsidianSearch<CR>",
      desc = "Obsidian: Buscar notas",
    },
    {
      "<leader>od",
      "<cmd>ObsidianDailies<CR>",
      desc = "Obsidian: Notas diarias",
    },
    {
      "<leader>ot",
      "<cmd>ObsidianToday<CR>",
      desc = "Obsidian: Nota de hoy",
    },
    {
      "<leader>oy",
      "<cmd>ObsidianYesterday<CR>",
      desc = "Obsidian: Nota de ayer",
    },
    {
      "<leader>ob",
      "<cmd>ObsidianBacklinks<CR>",
      desc = "Obsidian: Backlinks",
    },
    {
      "<leader>op",
      "<cmd>ObsidianPasteImg<CR>",
      desc = "Obsidian: Pegar imagen",
    },
  },
}
