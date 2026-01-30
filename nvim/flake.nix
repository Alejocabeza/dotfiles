{
  description = "A Lua-natic's neovim flake, with extra cats! nixCats!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixCats.url = "github:BirdeeHub/nixCats-nvim";

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };

    blade-treesitter = {
      url = "github:EmranMR/tree-sitter-blade";
      flake = false;
    };

    "plugins-git-worktree.nvim" = {
      url = "github:polarmutex/git-worktree.nvim";
      flake = false;
    };

    "plugins-opencode.nvim" = {
      url = "github:sudo-tee/opencode.nvim";
      flake = false;
    };

    "plugins-debugmaster.nvim" = {
      url = "github:miroshQa/debugmaster.nvim";
      flake = false;
    };

    "plugins-marker-groups.nvim" = {
      url = "github:jameswolensky/marker-groups.nvim";
      flake = false;
    };

    "plugins-laravel.nvim" = {
      url = "github:adalessa/laravel.nvim";
      flake = false;
    };

    "plugins-neotest-pest" = {
      url = "github:V13Axel/neotest-pest";
      flake = false;
    };
    "plugins-neotest-vitest" = {
      url = "github:marilari88/neotest-vitest";
      flake = false;
    };

  };

  outputs = { self, nixpkgs, nixCats, ... }@inputs:
    let
      inherit (nixCats) utils;
      luaPath = ./.;
      forEachSystem = utils.eachSystem nixpkgs.lib.platforms.all;
      extra_pkg_config = { };
      dependencyOverlays = [
        (utils.standardPluginOverlay inputs)
      ];

      categoryDefinitions = { pkgs, settings, categories, extra, name, mkPlugin, ... }@packageDef: {
          lspsAndRuntimeDeps = {
            laravel = with pkgs; [
              phpactor
              blade-formatter
              mago
              php83Packages.php-cs-fixer
            ];
            go = with pkgs; [
              gopls
              gotools
              golangci-lint
              golangci-lint-langserver
            ];
            rust = with pkgs; [
              rustc
              rustfmt
              cargo
              clippy
              rust-analyzer
            ];
            python = with pkgs; [
              python312
              python312Packages.python-lsp-server
            ];
            javascript = with pkgs; [
              nodejs
              typescript-language-server
              tailwindcss-language-server
              emmet-language-server
              vscode-langservers-extracted
              eslint_d
              prettierd
              astro-language-server
              vue-language-server
              svelteserver
            ];
            test = with pkgs; [
               vitest
            ];

          docker = with pkgs; [
            dockerfile-language-server-nodejs
            hadolint
          ];
          sql = with pkgs; [
            sqlfluff
            sqls
          ];
          cpp = with pkgs; [
            clang
          ];
          general = with pkgs; [
            fd
            gh
            git
            imagemagick
            (import ./php-debug-adapter.nix { inherit pkgs fetchurl stdenv; })
            jq
            lazygit
            lua-language-server
            nixd
            nixfmt-rfc-style
            stylua
          ];
          symfony = with pkgs; [
            phpactor
          ];
        };

          startupPlugins = {
            gitPlugins = with pkgs.neovimPlugins; [
              git-worktree-nvim
              opencode-nvim
            ];
            general = with pkgs.vimPlugins; [
              # AI
              dressing-nvim
              img-clip-nvim
              
              # UI/UX
              rainbow-delimiters-nvim
              inc-rename-nvim

              # Added by Agent
              harpoon2
              todo-comments-nvim
              cloak-nvim
              friendly-snippets
              neogen
              treesj
              vim-tmux-navigator
              vim-dadbod
              vim-dadbod-ui
              vim-dadbod-completion
              SchemaStore-nvim

              indent-blankline-nvim
              grug-far-nvim
              nvim-ts-autotag
              neotest-vitest
              noice-nvim
              trouble-nvim
              lualine-nvim
              nvim-notify
              nui-nvim
              nvim-web-devicons
              flash-nvim
              neogit
              diffview-nvim
              project-nvim
              undotree
              aerial-nvim
              persistence-nvim
              nvim-dap
              nvim-dap-ui
              nvim-dap-virtual-text
              kulala-nvim
              render-markdown-nvim
              refactoring-nvim
              nvim-treesitter-context
              nvim-ufo
              promise-async
              mini-nvim
              (nvim-treesitter.withPlugins (p: with p; [

              bash
              c
              diff
              html
              javascript
              jsdoc
              json
              lua
              luadoc
              luap
              markdown
              markdown_inline
              python
              query
              toml
              regex
              tsx
              typescript
              vim
              vimdoc
              xml
              yaml
              php
              css
              dockerfile
              astro
              vue
              svelte
              sql
              jsonc
            ]))
          ];
        };

        optionalPlugins = {
          gitPlugins = with pkgs.neovimPlugins; [ ];
          general = with pkgs.vimPlugins; [ ];
        };
        sharedLibraries = {
          general = with pkgs; [
            # libgit2
          ];
        };
        environmentVariables = {
          test = {
            CATTESTVAR = "It worked!";
          };
        };
        extraWrapperArgs = {
          test = [
            '' --set CATTESTVAR2 "It worked again!"''
          ];
        };
        python3.libraries = {
          test = (_: [ ]);
        };
        extraLuaPackages = {
          general = with pkgs.lua51Packages; [
          ];
          test = [ (_: [ ]) ];
        };
      };

      packageDefinitions = {
        nvim = { pkgs, name, ... }: {
          settings = {
            suffix-path = true;
            suffix-LD = true;
            wrapRc = true;
            aliases = [ "vim" ];
          };
          categories = {
            general = true;
            gitPlugins = true;
            customPlugins = true;
            test = true;
            laravel = true;
            go = true;
            rust = true;
            python = true;
            javascript = true;
            docker = true;
            sql = true;
            cpp = true;
            symfony = true;
            example = {
              youCan = "add more than just booleans";
              toThisSet = [
                "and the contents of this categories set"
                "will be accessible to your lua with"
                "nixCats('path.to.value')"
                "see :help nixCats"
              ];
            };
          };
        };
      };
      defaultPackageName = "nvim";
    in


    forEachSystem
      (system:
        let
          nixCatsBuilder = utils.baseBuilder luaPath
            {
              inherit nixpkgs system dependencyOverlays extra_pkg_config;
            }
            categoryDefinitions
            packageDefinitions;
          defaultPackage = nixCatsBuilder defaultPackageName;
          pkgs = import nixpkgs { inherit system; };
        in
        {
          packages = utils.mkAllWithDefault defaultPackage;
          devShells = {
            default = pkgs.mkShell {
              name = defaultPackageName;
              packages = [ defaultPackage ];
              inputsFrom = [ ];
              shellHook = ''
        '';
            };
          };

        }) // (
      let
        nixosModule = utils.mkNixosModules {
          moduleNamespace = [ defaultPackageName ];
          inherit defaultPackageName dependencyOverlays luaPath
            categoryDefinitions packageDefinitions extra_pkg_config nixpkgs;
        };
        homeModule = utils.mkHomeModules {
          moduleNamespace = [ defaultPackageName ];
          inherit defaultPackageName dependencyOverlays luaPath
            categoryDefinitions packageDefinitions extra_pkg_config nixpkgs;
        };
      in
      {

        overlays = utils.makeOverlays luaPath
          {
            inherit nixpkgs dependencyOverlays extra_pkg_config;
          }
          categoryDefinitions
          packageDefinitions
          defaultPackageName;

        nixosModules.default = nixosModule;
        homeModules.default = homeModule;

        inherit utils nixosModule homeModule;
        inherit (utils) templates;
      }
    );

}
