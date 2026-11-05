#!/usr/bin/env bash
# Symlinkt die Configs dieses Repos per GNU stow nach $HOME.
set -euo pipefail

BASE=(bashrc kitty starship fastfetch)
DESKTOP=(hypr waybar wofi)
repo="$(cd "$(dirname "$0")" && pwd)"

usage() {
    cat >&2 <<EOF
Usage: $0 all | base | <paket>...
  all    ${BASE[*]} ${DESKTOP[*]}
  base   ${BASE[*]}
  sonst  einzelne Pakete, z. B.: $0 kitty starship
EOF
    exit 1
}

[ $# -eq 0 ] && usage
command -v stow >/dev/null || { echo "Fehler: stow ist nicht installiert." >&2; exit 1; }

case "$1" in
    all)  pkgs=("${BASE[@]}" "${DESKTOP[@]}") ;;
    base) pkgs=("${BASE[@]}") ;;
    *)    pkgs=("$@") ;;
esac

for p in "${pkgs[@]}"; do
    [ -d "$repo/$p" ] || { echo "Fehler: unbekanntes Paket '$p'." >&2; usage; }
done

# Bei bestehenden Dateien bricht stow selbst ab und meldet die Konflikte, nichts wird überschrieben.
# Kein --restow: GNU stow 2.3.1 scheitert damit bei mehreren Paketen ("unstow_contents() called with invalid target").
stow -d "$repo" -t "$HOME" "${pkgs[@]}"
echo "Installiert: ${pkgs[*]}"
