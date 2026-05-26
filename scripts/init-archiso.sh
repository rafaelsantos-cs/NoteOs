#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="$ROOT_DIR/archiso/noteos-releng"

if ! command -v mkarchiso >/dev/null 2>&1; then
  echo "Erro: archiso não encontrado. Instale com: sudo pacman -S archiso"
  exit 1
fi

if [ -d "$TARGET" ]; then
  echo "Perfil archiso já existe em $TARGET"
  exit 0
fi

cp -r /usr/share/archiso/configs/releng "$TARGET"
echo "Perfil archiso criado em $TARGET"
