#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_DIR="$ROOT_DIR/repo/x86_64"
REPO_NAME="noteos"

mkdir -p "$REPO_DIR"
find "$ROOT_DIR/packages" -name "*.pkg.tar.zst" -exec cp {} "$REPO_DIR" \;
cd "$REPO_DIR"
repo-add "$REPO_NAME.db.tar.gz" ./*.pkg.tar.zst
ln -sf "$REPO_NAME.db.tar.gz" "$REPO_NAME.db"
ln -sf "$REPO_NAME.files.tar.gz" "$REPO_NAME.files" || true

echo "Repo atualizado em $REPO_DIR"
