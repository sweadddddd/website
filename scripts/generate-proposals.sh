#!/usr/bin/env bash
# Génère 3 maquettes de site (images de proposition) pour Tech Point Paris.
# PRÉREQUIS : export GEMINI_API_KEY=... avant de lancer.
# Prompts détaillés et lisibles : voir mockups/PROMPTS.md
set -euo pipefail

CLI="/root/.claude/plugins/cache/media-pipeline-marketplace/media-pipeline/1.0.0/mcp-server/build/cli.bundle.js"
MODEL="${GEMINI_IMAGE_MODEL:-gemini-2.5-flash-image}"
OUT="$(cd "$(dirname "$0")/.." && pwd)/mockups"
RATIO="${RATIO:-3:2}"

[[ -z "${GEMINI_API_KEY:-}" ]] && { echo "ERREUR : export GEMINI_API_KEY=... requis." >&2; exit 1; }

gen () { echo ">> $1"; node "$CLI" -p "$2" -o "$OUT/$1" -a "$RATIO" -m "$MODEL"; }

A="UI/UX web design mockup, full desktop landing page screenshot of a modern French e-commerce style website for a smartphone and tablet repair shop. Layout top to bottom: a thin orange promotional bar at the very top; a dark navy-blue header with a small cyan rounded logo tile, a wide white rounded search bar with a category dropdown, and small line icons on the right (location pin, user, phone); a secondary navy mega-navigation bar with one cyan highlighted tab and thin line icons. Hero area is a large white rounded card split in two: left half has a bold dark headline with one word highlighted in orange, a short grey subtitle, and a large orange rounded call-to-action button; right half is a clean bright product photograph of a technician's hands repairing a smartphone with a cracked screen on a tidy workshop bench, soft studio lighting. Below, a row of four white rounded product category tiles, each with a device photo, a title and a small navy circular arrow button, then three colourful rounded feature tiles. Clean, airy, professional, trustworthy, high-end tech retail feel. Navy blue, cyan, orange accents, light grey background, white cards, flat modern UI, crisp realistic web design, high detail, 4k. No brand logos, no watermark."

B="UI/UX web design mockup, desktop landing page screenshot for a premium smartphone and tablet repair service. Warm off-white background, generous whitespace, editorial feel. Minimal header with a wordmark on the left and a single dark rounded call button on the right. Large hero with a big elegant headline (one word in italic deep-green), a short grey subline, two buttons. An asymmetric bento grid of white cards with ultra-soft shadows: one large card with a clean photo of a repaired smartphone, one card with a five-star customer quote, small cards with a shield warranty icon and an address. Muted pastel tag chips. Refined, calm, high-end, Apple-like restraint. Warm off-white, charcoal text, one deep-green accent, soft pastel chips. Crisp realistic web design, high detail, 4k. No brand logos, no watermark."

C="UI/UX web design mockup, desktop landing page screenshot for a fast smartphone repair shop, bold promotional retail style. Navy-blue and vivid orange color scheme with a bright energetic hero. Top orange banner, navy header with logo and orange rounded phone button. Hero split: left a very bold headline with an orange highlighted word and a big orange call-to-action; right a white most-requested-repairs price card listing repair types with orange price tags. Below, a four-column grid of colourful product tiles with badges, device photos, and from-price labels. A big navy call-to-action band at the bottom. Punchy, high-contrast, deal-driven, high-street shop feel. Navy blue, vivid orange, white cards, light grey background. Flat modern UI, crisp realistic web design, high detail, 4k. No brand logos, no watermark."

gen proposition-A-ldlc.png "$A"
gen proposition-B-premium.png "$B"
gen proposition-C-promo.png "$C"

echo "Terminé. Maquettes dans $OUT :"; ls -1 "$OUT"/*.png 2>/dev/null || true
