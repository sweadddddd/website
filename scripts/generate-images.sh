#!/usr/bin/env bash
# Génération des visuels du site Tech Point Paris via le plugin media-pipeline
# (modèle Gemini image). PRÉREQUIS : export GEMINI_API_KEY=... avant de lancer.
#
# Usage :
#   export GEMINI_API_KEY="votre_cle"
#   bash scripts/generate-images.sh
#
# Coût estimé : ~0,04 $ / image avec gemini-2.5-flash-image, soit ~0,20 $ au total
# pour les 5 visuels (bien sous le budget de 1 $). Le palier gratuit de Google
# AI Studio couvre généralement ce volume à 0 $.
#
# Règle de contenu (voir 02-creation-site.md) : images illustratives / génériques
# du SERVICE uniquement. Jamais présentées comme la vraie façade ou la vraie équipe.

set -euo pipefail

CLI="/root/.claude/plugins/cache/media-pipeline-marketplace/media-pipeline/1.0.0/mcp-server/build/cli.bundle.js"
MODEL="${GEMINI_IMAGE_MODEL:-gemini-2.5-flash-image}"
OUT="$(cd "$(dirname "$0")/.." && pwd)/assets"

if [[ -z "${GEMINI_API_KEY:-}" ]]; then
  echo "ERREUR : GEMINI_API_KEY non défini. Faites : export GEMINI_API_KEY=..." >&2
  exit 1
fi

gen () {  # gen <fichier> <ratio> <prompt>
  local file="$1" ratio="$2" prompt="$3"
  echo ">> $file ($ratio)"
  node "$CLI" -p "$prompt" -o "$OUT/$file" -a "$ratio" -m "$MODEL"
}

STYLE="Professional commercial photography, deep navy and electric-blue color grade, \
clean, sharp focus, soft studio lighting, high-end tech feel, no text, no logo, no watermark."

gen hero.png 16:9 \
  "Close-up of a technician's hands repairing a smartphone with a cracked screen on a tidy \
workshop bench, precision tools and a tablet in soft background. $STYLE"

gen svc-screen.png 4:3 \
  "Macro shot of a cracked smartphone screen being replaced with a new display panel, tweezers \
and suction tool visible. $STYLE"

gen svc-battery.png 4:3 \
  "Opened smartphone on a repair mat with the battery being replaced, spudger and screws neatly \
arranged. $STYLE"

gen svc-sales.png 4:3 \
  "A clean display row of refurbished smartphones and tablets standing upright on a minimalist \
shelf, retail feel. $STYLE"

gen svc-accessories.png 4:3 \
  "Neatly arranged smartphone accessories: protective cases, tempered glass screen protectors, \
charging cables and adapters on a flat surface, top-down. $STYLE"

# Régénère le manifeste : le site n'affiche que les visuels réellement présents.
MAN="$OUT/manifest.js"
{
  echo "/* Généré par scripts/generate-images.sh. Ne pas éditer à la main. */"
  echo "window.TP_IMAGES = {"
  for key in hero svc-screen svc-battery svc-sales svc-accessories; do
    [[ -f "$OUT/$key.png" ]] && echo "  \"$key\": \"assets/$key.png\","
  done
  echo "};"
} > "$MAN"

echo "Terminé. Visuels dans $OUT :"
ls -1 "$OUT"/*.png 2>/dev/null || true
echo "Manifeste mis à jour : $MAN"
