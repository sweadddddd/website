# Maquettes de site (images de proposition) — Tech Point Paris

Prompts prêts à coller dans un modèle d'image (Gemini `gemini-2.5-flash-image`, Imagen 4,
Midjourney, etc.) pour générer des **maquettes de site entières**, servant de propositions
visuelles. Ce ne sont pas les visuels intégrés au site : ce sont des rendus de design pour
choisir une direction.

> Note honnête : les modèles d'image écrivent mal le vrai texte d'interface (mots déformés).
> Ces maquettes servent à juger la mise en page, les couleurs et l'ambiance, pas le contenu.
> La version exacte et lisible, c'est le site codé (`concepts/concept-7-ldlc.html`).

## Le site à représenter (résumé)

- **Business** : Tech Point Paris, réparation de smartphones et tablettes + vente, Paris 12,
  quartier Montgallet.
- **Style visé** : e-commerce moderne façon LDLC. Header bleu marine avec barre de recherche,
  méga-navigation, hero promotionnel à accent orange, tuiles catégories avec photos de produits,
  tuiles thématiques colorées, badges de garantie, cartes blanches arrondies. Propre, rassurant,
  énergique, professionnel.
- **Palette** : bleu marine `#1b2a4a`, cyan `#18b6d8`, orange `#ff6a1a`, fond gris clair,
  cartes blanches.

---

## Proposition A — "LDLC-like" (recommandée)

```
UI/UX web design mockup, full desktop landing page screenshot of a modern French e-commerce
style website for a smartphone and tablet repair shop. Layout top to bottom: a thin orange
promotional bar at the very top; a dark navy-blue header containing a small cyan rounded logo
tile, a wide white rounded search bar with a category dropdown, and small line icons on the
right (location pin, user, phone); a secondary navy mega-navigation bar with one cyan
highlighted tab and thin line icons. Hero area is a large white rounded card split in two:
left half has a bold dark headline with one word highlighted in orange, a short grey subtitle,
and a large orange rounded call-to-action button; right half is a clean bright product
photograph of a technician's hands repairing a smartphone with a cracked screen on a tidy
workshop bench, soft studio lighting. Below, a row of four white rounded product category
tiles, each showing a device photo, a title, and a small navy circular arrow button. Then a
row of three colourful rounded feature tiles (blue, purple, red) with photos. Clean, airy,
professional, trustworthy, high-end tech retail feel. Color palette: navy blue, cyan, orange
accents, light grey background, white cards, flat modern UI, crisp realistic web design,
high detail, 4k. No brand logos, no watermark.
```
Ratio conseillé : **3:2** (hero net) ou **9:16** (page longue). Modèle : `gemini-2.5-flash-image`.

---

## Proposition B — "Premium clair" (plus haut de gamme, épuré)

```
UI/UX web design mockup, desktop landing page screenshot for a premium smartphone and tablet
repair service. Warm off-white background, generous whitespace, editorial feel. Minimal header
with a wordmark on the left and a single dark rounded call button on the right. Large hero with
a big elegant headline (one word in italic deep-green), a short grey subline, two buttons.
An asymmetric bento grid of white cards with ultra-soft shadows: one large card with a clean
photo of a repaired smartphone, one card with a five-star customer quote, small cards with a
shield "warranty" icon and an address. Muted pastel tag chips. Refined, calm, high-end,
Apple-like restraint. Color palette: warm off-white, charcoal text, one deep-green accent,
soft pastel chips. Crisp realistic web design, high detail, 4k. No brand logos, no watermark.
```
Ratio conseillé : **3:2**. Modèle : `gemini-2.5-flash-image`.

---

## Proposition C — "Promo énergique" (conversion, coloré)

```
UI/UX web design mockup, desktop landing page screenshot for a fast smartphone repair shop,
bold promotional retail style. Navy-blue and vivid orange color scheme with a bright energetic
hero. Top orange banner, navy header with logo and orange rounded phone button. Hero split:
left a very bold headline with an orange highlighted word and a big orange call-to-action;
right a white "most requested repairs" price card listing repair types with orange price tags.
Below, a four-column grid of colourful product tiles with badges ("TOP"), device photos, and
"from ..." price labels. A big navy call-to-action band at the bottom. Punchy, high-contrast,
deal-driven, high-street shop feel. Color palette: navy blue, vivid orange, white cards, light
grey background. Flat modern UI, crisp realistic web design, high detail, 4k. No brand logos,
no watermark.
```
Ratio conseillé : **3:2**. Modèle : `gemini-2.5-flash-image`.

---

## Comment générer

Option 1 — coller le prompt dans n'importe quel outil d'image (Google AI Studio / Gemini,
Imagen, Midjourney, etc.).

Option 2 — via le plugin déjà installé dans ce projet (nécessite `GEMINI_API_KEY`) :

```bash
export GEMINI_API_KEY="votre_cle_google_ai_studio"
bash scripts/generate-proposals.sh
```

Sorties dans `mockups/` : `proposition-A-ldlc.png`, `proposition-B-premium.png`,
`proposition-C-promo.png`. Coût estimé ~0,04 $/image (~0,12 $ les trois).
