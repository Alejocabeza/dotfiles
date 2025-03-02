return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    ---@type lspconfig.options
    servers = {
      cssls = {},
      tailwindcss = {
        root_dir = function(...)
          return require("lspconfig.util").root_pattern(".git")(...)
        end,
      },
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              enumMemberValues = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              variableTypes = { enabled = false },
            },
          },
        },
      },
      phpactor = {
        init_options = {
          ["language_server_configuration.auto_config"] = false,
          ["language_server_worse_reflection.inlay_hints.enable"] = true,
          ["language_server_worse_reflection.inlay_hints.types"] = false,
          ["language_server_worse_reflection.inlay_hints.params"] = true,
          ["code_transform.import_globals"] = true,
          ["phpunit.enabled"] = true,
          ["indexer.exclude_patterns"] = {
            "/vendor/**/Tests/**/*",
            "/vendor/**/tests/**/*",
            "/var/cache/**/*",
            "/vendor/composer/**/*",
          },
          ["php_code_sniffer.enabled"] = true,
          ["php_code_sniffer.bin"] = "%project_root%/bin/phpcs",

          ["language_server_phpstan.enabled"] = true,
          ["language_server_phpstan.level"] = "7",
          ["language_server_phpstan.bin"] = "%project_root%/bin/phpstan",
          ["language_server_phpstan.mem_limit"] = "2048M",
        },
      },
      tsserver = {
        root_dir = function(...)
          return require("lspconfig.util").root_pattern(".git")(...)
        end,
        single_file_support = false,
        settings = {
          excludeFiles = { "**/node_modules/**", "**/dist/**" },
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "literal",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      html = {},
      yamlls = {
        settings = {
          yaml = {
            keyOrdering = false,
          },
        },
      },
      eslint = {},
      lua_ls = {
        -- enabled = false,
        single_file_support = true,
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            completion = {
              workspaceWord = true,
              callSnippet = "Both",
            },
            misc = {
              parameters = {
                -- "--log-level=trace",
              },
            },
            hint = {
              enable = true,
              setType = false,
              paramType = true,
              paramName = "Disable",
              semicolon = "Disable",
              arrayIndex = "Disable",
            },
            doc = {
              privateName = { "^_" },
            },
            type = {
              castNumberToInteger = true,
            },
            diagnostics = {
              disable = { "incomplete-signature-doc", "trailing-space" },
              -- enable = false,
              groupSeverity = {
                strong = "Warning",
                strict = "Warning",
              },
              groupFileStatus = {
                ["ambiguity"] = "Opened",
                ["await"] = "Opened",
                ["codestyle"] = "None",
                ["duplicate"] = "Opened",
                ["global"] = "Opened",
                ["luadoc"] = "Opened",
                ["redefined"] = "Opened",
                ["strict"] = "Opened",
                ["strong"] = "Opened",
                ["type-check"] = "Opened",
                ["unbalanced"] = "Opened",
                ["unused"] = "Opened",
              },
              unusedLocalExclude = { "_*" },
            },
            format = {
              enable = false,
              defaultConfig = {
                indent_style = "space",
                indent_size = "2",
                continuation_indent_size = "2",
              },
            },
          },
        },
      },
    },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
    },
  },
}
