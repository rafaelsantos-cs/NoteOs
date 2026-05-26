#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Uso: ./scripts/build-pkg.sh packages/nome-do-pacote"
  exit 1
fi

PKG_DIR="$1"
cd "$PKG_DIR"
makepkg -sf
