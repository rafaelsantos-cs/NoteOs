#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROFILE="$ROOT_DIR/archiso/noteos-releng"
OUT="$ROOT_DIR/out"
WORK="/tmp/noteos-archiso-work"

if [ ! -d "$PROFILE" ]; then
  echo "Perfil archiso não encontrado. Rode: ./scripts/init-archiso.sh"
  exit 1
fi

mkdir -p "$OUT"
sudo rm -rf "$WORK"
sudo mkarchiso -v -w "$WORK" -o "$OUT" "$PROFILE"
echo "ISO gerada em $OUT"
