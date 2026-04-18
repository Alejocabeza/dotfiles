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
        path = "/home/alejandrocabeza/.dotfiles/obsidean/Alejandro Cabeza/",
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
    legacy_commands = false,
  },

  -- Configuración de comandos válidos
  -- Nuevos comandos (espacios, minúsculas) según la API actualizada
  cmd = {
    "Obsidian open",
    "Obsidian new",
    "Obsidian search",
    "Obsidian dailies",
    "Obsidian today",
    "Obsidian tomorrow",
    "Obsidian yesterday",
    "Obsidian backlinks",
    "Obsidian tags",
    "Obsidian paste img",
    "Obsidian quick switch",
    "Obsidian extract note",
    "Obsidian template",
  },

  -- Configuración de keymaps globales
  keys = {
    {
      "<leader>oo",
      "<cmd>Obsidian open<CR>",
      desc = "Obsidian: Abrir nota",
    },
    {
      "<leader>on",
      "<cmd>Obsidian new<CR>",
      desc = "Obsidian: Nueva nota",
    },
    {
      "<leader>os",
      "<cmd>Obsidian search<CR>",
      desc = "Obsidian: Buscar notas",
    },
    {
      "<leader>od",
      "<cmd>Obsidian dailies<CR>",
      desc = "Obsidian: Notas diarias",
    },
    {
      "<leader>ot",
      "<cmd>Obsidian today<CR>",
      desc = "Obsidian: Nota de hoy",
    },
    {
      "<leader>oy",
      "<cmd>Obsidian yesterday<CR>",
      desc = "Obsidian: Nota de ayer",
    },
    {
      "<leader>ob",
      "<cmd>Obsidian backlinks<CR>",
      desc = "Obsidian: Backlinks",
    },
    {
      "<leader>op",
      "<cmd>Obsidian paste img<CR>",
      desc = "Obsidian: Pegar imagen",
    },
  },
}
