# Visuels du site — emplacements et génération

Le site référence 5 images à ces chemins **exacts**. Tant qu'un fichier est absent,
le site affiche un emplacement stylé « visuel à générer » (dégradé + libellé) à sa place ;
dès que le fichier existe au bon chemin, il s'affiche automatiquement, **sans reconstruire**
le site.

| Fichier attendu | Emplacement sur le site | Ratio |
|---|---|---|
| `assets/hero.png` | Grand visuel de l'accueil (hero) | 16:9 |
| `assets/svc-screen.png` | Service « Réparation d'écran » | 4:3 |
| `assets/svc-battery.png` | Service « Batterie et charge » | 4:3 |
| `assets/svc-sales.png` | Service « Vente de téléphones » | 4:3 |
| `assets/svc-accessories.png` | Service « Accessoires » | 4:3 |

## Générer les images (une fois la clé fournie)

```bash
export GEMINI_API_KEY="votre_cle_google_ai_studio"
bash scripts/generate-images.sh
```

- Modèle par défaut : `gemini-2.5-flash-image` (~0,04 $/image, ~0,20 $ au total, sous le budget de 1 $).
- Le palier gratuit de Google AI Studio couvre généralement ce volume.
- Contenu strictement illustratif du service (voir `site-business-automation/02-creation-site.md`,
  étape 1.5) : jamais présenté comme la vraie façade ou la vraie équipe de la boutique.
