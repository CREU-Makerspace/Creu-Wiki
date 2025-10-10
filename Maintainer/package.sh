#!/usr/bin/env bash
set -euo pipefail

# Locate this script and derive vault root (folder above Maintainer/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
BASENAME="$(basename "$ROOT_DIR")"   # e.g., CreuWikiPages

# Params: optional DATE and VERSION; defaults to today + v1.0
DATE="${1:-$(date +%F)}"
VER="${2:-v1.0}"
OUT="${BASENAME}_Baseline_${DATE}_${VER}.zip"

echo "Vault root: $ROOT_DIR"
echo "Output zip: $OUT"

# Sanity checks (required files)
if [[ ! -f "$ROOT_DIR/CREU-TheManufactory_Homepage.md" ]]; then
  echo "❌ Missing homepage in $ROOT_DIR"
  exit 1
fi

# Theme check: allow either root or .obsidian/snippets
if [[ -f "$ROOT_DIR/creu-theme.css" ]]; then
  echo "✅ Found theme in root"
elif [[ -f "$ROOT_DIR/.obsidian/snippets/creu-theme.css" ]]; then
  echo "✅ Found theme in .obsidian/snippets/"
else
  echo "❌ Missing creu-theme.css (expected in root or .obsidian/snippets/)"
  exit 1
fi

# Maintainer README check
if [[ ! -f "$ROOT_DIR/Maintainer/README.md" ]]; then
  echo "❌ Missing Maintainer/README.md"
  exit 1
fi

# Optional check: logo asset
LOGO_PATH="$ROOT_DIR/images/creu_logo.png"
if [[ ! -f "$LOGO_PATH" ]]; then
  echo "⚠️  Warning: Logo image missing ($LOGO_PATH). Banner may not display as intended."
fi

# Zip from the parent of the vault root so the archive contains the whole folder
PARENT_DIR="$(cd "$ROOT_DIR/.." && pwd)"
cd "$PARENT_DIR"

zip -r "$OUT" "$BASENAME" \
  -x "$BASENAME/.obsidian/*" \
     "$BASENAME/.git/*" \
     "$BASENAME/node_modules/*" \
     "$BASENAME/**/.DS_Store"

echo "✅ Packaged -> $PARENT_DIR/$OUT"