#!/usr/bin/env bash
# Génère les 5 visuels du site Tech Point Paris (style maquette LDLC).
# PRÉREQUIS : export GEMINI_API_KEY=... (ou générer ailleurs et déposer les .png dans assets/).
# Prompts détaillés : voir assets/README.md
set -euo pipefail
CLI="/root/.claude/plugins/cache/media-pipeline-marketplace/media-pipeline/1.0.0/mcp-server/build/cli.bundle.js"
MODEL="${GEMINI_IMAGE_MODEL:-gemini-2.5-flash-image}"
OUT="$(cd "$(dirname "$0")/.." && pwd)/assets"
[[ -z "${GEMINI_API_KEY:-}" ]] && { echo "ERREUR : export GEMINI_API_KEY=... requis." >&2; exit 1; }

STY="clean commercial e-commerce photography, bright pure white background, soft studio lighting, subtle soft shadow, sharp focus, high detail, no text, no watermark, no brand logo."

gen(){ echo ">> $1 ($2)"; node "$CLI" -p "$3" -o "$OUT/$1" -a "$2" -m "$MODEL"; }

gen hero.png 4:3 \
  "Professional photograph, close-up of a technician's hands repairing a smartphone with a cracked screen using a precision tool, on a dark navy-blue repair mat, neat rows of tools softly blurred in the background, bright clean white workshop, soft studio lighting, shallow depth of field, high-end tech repair feel. $STY"
gen cat-screen.png 1:1 \
  "A modern smartphone lying face up with a badly cracked and shattered glass screen, slight top-down angle. $STY"
gen cat-battery.png 1:1 \
  "An opened smartphone showing its internal battery being replaced, a slim replacement battery and a small screwdriver beside it, top-down. $STY"
gen cat-sales.png 1:1 \
  "Three modern smartphones standing upright slightly overlapping, sleek black and titanium finishes, subtle reflection. $STY"
gen cat-accessories.png 1:1 \
  "A neat flat-lay of smartphone accessories: a white charging adapter, a coiled charging cable and a black protective phone case, top-down. $STY"

# Régénère le manifeste (le site n'affiche que les visuels présents)
{ echo "/* Généré par scripts/generate-images.sh. */"; echo "window.TP_IMAGES = {";
  for k in hero cat-screen cat-battery cat-sales cat-accessories; do [[ -f "$OUT/$k.png" ]] && echo "  \"$k\": \"assets/$k.png\","; done
  echo "};"; } > "$OUT/manifest.js"
echo "Terminé :"; ls -1 "$OUT"/*.png 2>/dev/null || true
