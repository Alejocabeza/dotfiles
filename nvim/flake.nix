{
  description = "My Config for 2026";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixCats.url = "github:BirdeeHub/nixCats-nvim";

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };

    blade-treesitter = {
      url = "github:EmranMR/tree-sitter-blade";
      flake = false;
    }

    "plugins-git-worktree.nvim" = {
      url = "github:polarmutex/git-worktree.nvim";
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

    # see :help nixCats.flake.inputs
    # If you want your plugin to be loaded by the standard overlay,
    # i.e. if it wasnt on nixpkgs, but doesnt have an extra build step.
    # Then you should name it "plugins-something"
    # If you wish to define a custom build step not handled by nixpkgs,
    # then you should name it in a different format, and deal with that in the
    # overlay defined for custom builds in the overlays directory.
    # for specific tags, branches and commits, see:
    # https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html#examples
  };

  # see :help nixCats.flake.outputs
  outputs = { self, nixpkgs, nixCats, ... }@inputs: let
    inherit (nixCats) utils;
    luaPath = ./.;
    forEachSystem = utils.eachSystem nixpkgs.lib.platforms.all;
    extra_pkg_config = {};
    dependencyOverlays =  [
      (utils.standardPluginOverlay inputs)
    ];

    categoryDefinitions = { pkgs, settings, categories, extra, name, mkPlugin, ... }@packageDef: {
      lspsAndRuntimeDeps = {
        general = with pkgs; [
        ];
      };

      startupPlugins = {
        gitPlugins = with pkgs.neovimPlugins; [ ];
        general = with pkgs.vimPlugins; [ ];
      };

      optionalPlugins = {
        gitPlugins = with pkgs.neovimPlugins; [ ];
        general = with pkgs.vimPlugins; [ ];
      };

      sharedLibraries = {
        general = with pkgs; [
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
        test = (_:[]);
      };

      extraLuaPackages = {
        test = [ (_:[]) ];
      };
    };

    packageDefinitions = {
      nvim = {pkgs , name, ... }: {
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


  forEachSystem (system: let
    nixCatsBuilder = utils.baseBuilder luaPath {
      inherit nixpkgs system dependencyOverlays extra_pkg_config;
    } categoryDefinitions packageDefinitions;
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

  }) // (let
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
  in {
    overlays = utils.makeOverlays luaPath {
      inherit nixpkgs dependencyOverlays extra_pkg_config;
    } categoryDefinitions packageDefinitions defaultPackageName;

    nixosModules.default = nixosModule;
    homeModules.default = homeModule;

    inherit utils nixosModule homeModule;
    inherit (utils) templates;
  });

}
