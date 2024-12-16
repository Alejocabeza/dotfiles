return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  cmd = "Neotree",
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer Neotree (cwd)",
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({ source = "git_status", toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>be",
      function()
        require("neo-tree.command").execute({ source = "buffers", toggle = true })
      end,
      desc = "Buffer Explorer",
    },
  },
  init = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      group = vim.api.nvim_create_augroup("Neotree_start_directory", { clear = true }),
      desc = "Start Neo-tree with directory",
      once = true,
      callback = function()
        if not package.loaded["neo-tree"] then
          local stats = vim.uv.fs_stat(vim.fn.argv(0))
          if stats and stats.type == "directory" then
            require("neo-tree")
          end
        end
      end,
    })
  end,
  opts = function(_, opts)
    opts.close_if_last_window = true
    opts.sources = { "filesystem", "buffers", "git_status" }
    opts.open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" }
    opts.filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuy_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
        },
        always_show = {
          ".env",
        },
      },
    }
    opts.window = {
      width = 30,
      mappings = {
        ["l"] = "open",
        ["h'"] = "close_node",
        ["<space>"] = "none",
        ["y"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            vim.fn.setreg("+", path, "c")
          end,
          desc = "Copy Path to Clipboard",
        },
        ["Q"] = {
          function(state)
            require("lazy.util").open(state.tree:get_node().path, { system = true })
          end,
          desc = "Open with System Application",
        },
        ["P"] = { "toggle_preview", config = { use_float = false } },
      },
    }
    opts.default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          unstaged = "󰄱",
          staged = "󰱒",
        },
      },
    }

    local events = require("neo-tree.events")
    opts.event_handlers = opts.event_handlers or {}
    vim.list_extend(opts.event_handlers, {
      {
        event = events.FILE_MOVED,
        handler = function(data)
          Snacks.rename.on_rename_file(data.source, data.destination)
        end,
      },
      {
        event = events.FILE_RENAMED,
        handler = function(data)
          Snacks.rename.on_rename_file(data.source, data.destination)
        end,
      },
    })

    vim.api.nvim_create_autocmd("TermClose", {
      pattern = "*lazygit",
      callback = function()
        if package.loaded["neo-tree.sources.git_status"] then
          require("neo-tree.sources.git_status").refresh()
        end
      end,
    })

    return opts
  end,
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
