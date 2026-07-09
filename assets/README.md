# Visuels du site — emplacements, noms de fichiers et prompts

Le site (concept LDLC) référence **5 images** à ces chemins **exacts**. Tant qu'un fichier est
absent, l'emplacement affiche un placeholder stylé ; dès que le fichier existe au bon nom, il
s'affiche automatiquement, sans reconstruire le site.

| Fichier attendu | Emplacement | Ratio |
|---|---|---|
| `assets/hero.png` | Grand visuel du hero (atelier) | 4:3 |
| `assets/cat-screen.png` | Tuile « Réparation d'écran » | 1:1 |
| `assets/cat-battery.png` | Tuile « Batterie & charge » | 1:1 |
| `assets/cat-sales.png` | Tuile « Vente de téléphones » | 1:1 |
| `assets/cat-accessories.png` | Tuile « Accessoires » | 1:1 |

> Nomme bien les fichiers comme ci-dessus. Si tu me les envoies avec d'autres noms, je les
> renommerai et les déposerai dans `assets/`.

## Prompts (style e-commerce clair, cohérent avec la maquette)

Style commun à ajouter à chaque prompt : *clean commercial e-commerce photography, bright pure
white background, soft studio lighting, subtle soft shadow, sharp focus, high detail, no text,
no watermark, no brand logo.*

**hero.png (4:3)** — l'ambiance atelier de ta maquette :
```
Professional photograph, close-up of a technician's hands repairing a smartphone with a cracked
screen using a precision tool, on a dark navy-blue repair mat, neat rows of tools softly blurred
in the background, bright clean white workshop, soft studio lighting, shallow depth of field,
high-end tech repair feel.
```

**cat-screen.png (1:1)** :
```
A modern smartphone lying face up with a badly cracked and shattered glass screen, slight
top-down angle.
```

**cat-battery.png (1:1)** :
```
An opened smartphone showing its internal battery being replaced, a slim replacement battery and
a small screwdriver beside it, top-down.
```

**cat-sales.png (1:1)** :
```
Three modern smartphones standing upright slightly overlapping, sleek black and titanium
finishes, subtle reflection.
```

**cat-accessories.png (1:1)** :
```
A neat flat-lay of smartphone accessories: a white charging adapter, a coiled charging cable and
a black protective phone case, top-down.
```

## Générer automatiquement (si clé Gemini fournie)

```bash
export GEMINI_API_KEY="votre_cle"
bash scripts/generate-images.sh
```
Coût ~0,04 $/image (~0,20 $ les 5). Contenu strictement illustratif, jamais présenté comme la
vraie façade ou la vraie équipe.
