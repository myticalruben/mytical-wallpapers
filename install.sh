#!/usr/bin/env bash
# Instala la colección privada de wallpapers personales de Mytical.
# No requiere root ni toca la configuración del escritorio.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${MYTICAL_WALLPAPER_DIR:-${XDG_PICTURES_DIR:-$HOME/Pictures}/Wallpapers}"
force=0
[ "${1:-}" = "--force" ] && force=1
mkdir -p "$target"
for src in "$here"/wallpapers/*; do
    [ -f "$src" ] || continue
    name=$(basename "$src")
    if [ -e "$target/$name" ] && [ "$force" -ne 1 ]; then
        echo "existe: $name (usá --force para reemplazar)"
        continue
    fi
    cp -f "$src" "$target/$name"
    echo "instalado: $name"
done
echo "colección: $target"
