#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "Comprobando que flake.nix tenga la categoría 'copilot' habilitada..."
if ! grep -Eq "\bcopilot\s*=\s*true\b" "$ROOT_DIR/flake.nix"; then
  echo "ERROR: flake.nix no contiene 'copilot = true'"
  exit 1
fi

echo "Comprobando que lua/plugins/blink.lua incluya 'copilot' en sources.default..."
if ! grep -q '"copilot"' "$ROOT_DIR/lua/plugins/blink.lua"; then
  echo "ERROR: lua/plugins/blink.lua no incluye 'copilot' en las fuentes por defecto"
  exit 1
fi

echo "OK: Pruebas de configuración PASARON"
