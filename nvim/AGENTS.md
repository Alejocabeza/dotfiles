# Project Context: NixCats Neovim Configuration

## Overview
This repository hosts a **Neovim configuration** built upon the **nixCats-nvim** framework. It leverages **Nix** for reproducible dependency management (plugins, LSPs, linters, system tools) and **Lua** for runtime configuration.

## Architecture

### The Nix Layer (`flake.nix`)
- **Dependency Source:** Plugins and external tools are defined here.
- **Categorization:** The `categoryDefinitions` section groups packages (e.g., `lspsAndRuntimeDeps`, `startupPlugins`) by language or function (e.g., `laravel`, `rust`, `general`).
- **Inputs:** Uses `nixpkgs` and specific GitHub repositories for plugins not in nixpkgs (e.g., `laravel.nvim`, `neotest-pest`).

### The Lua Layer (`lua/`)
- **Entry Point:** `init.lua` loads the config.
- **Config:** `lua/config/` contains core settings (`options.lua`, `keymaps.lua`, `autocmds.lua`).
- **Plugins:** `lua/plugins/` contains plugin specifications. These often check `nixCats('category_name')` to decide whether to load or configure a plugin.
- **Nix Integration:** `lua/nixCatsUtils/` provides helpers to bridge Nix categories into Lua.

## Key Technologies & Stacks
- **Framework:** [nixCats-nvim](https://github.com/BirdeeHub/nixCats-nvim)
- **Plugin Management:** Hybrid approach. Nix handles the downloading and path management, while Lua handles the loading and configuration (often mimicking Lazy.nvim specs).
- **Primary Focus:** Strong support for **PHP/Laravel** development.

## Supported Languages & Tools
According to `flake.nix`, the following stacks are configured:
- **PHP / Laravel:** `laravel.nvim`, `blade-treesitter`, `phpactor`, `blade-formatter`, `neotest-pest`.
- **Lua:** `lua-language-server`, `stylua`, `lazydev.nvim`.
- **Nix:** `nixd`, `nixfmt-rfc-style`.
- **Rust:** `rust-analyzer`, `cargo`, `rustfmt`.
- **Go:** `gopls`, `golangci-lint`.
- **JavaScript/TypeScript:** `typescript-language-server`, `tailwindcss-language-server`.
- **Python:** `python-lsp-server`.
- **C++:** `clang`.

## Conventions for Agents

### 1. Language
*   **Spanish Only:** The agent must always respond and interact in **Spanish**, regardless of the language of the prompt or the codebase content.

### 2. Adding/Modifying Plugins
To add a new plugin, you typically need to touch two places:
1.  **Nix (`flake.nix`):**
    *   If available in nixpkgs: Add it to the appropriate list in `categoryDefinitions` (e.g., `startupPlugins.general` or `optionalPlugins`).
    *   If from GitHub: Add the input URL, and expose it via overlay or add it to the package definitions.
2.  **Lua (`lua/plugins/`):**
    *   Create or edit a file in `lua/plugins/` to configure the plugin.
    *   Use `nixCats` to check if the plugin/category is enabled before configuring it, if applicable.

### 3. Adding External Tools (LSPs, Linters, Formatters)
*   **Do not install via Mason.**
*   Add the tool package (e.g., `ripgrep`, `fd`, `gopls`) to `lspsAndRuntimeDeps` in `flake.nix`.
*   This ensures the tool is available in the wrapper's PATH.

### 4. Navigation
*   `lua/config`: Core editor settings.
*   `lua/plugins`: Plugin configuration files.
*   `lua/setup`: Custom setup logic (often for LSPs).
*   `ftplugin`: Filetype-specific configurations.

## Maintenance
*   The `flake.lock` file ensures version pinning for all inputs.
*   Configuration is split between build-time (Nix) and run-time (Lua). Always check `flake.nix` first when a "missing dependency" error occurs.
