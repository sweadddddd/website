# Phase 2 — Création / refonte du site

## Prérequis

Le rapport de la phase 1 doit exister et avoir été validé (au moins parcouru) avant de commencer. Tout le contenu du site (textes, horaires, services, prix) vient de ce rapport ou de données explicitement fournies par l'utilisateur — jamais inventé.

## Étape 0 — Charger le skill de design

Ce projet utilise `taste-skill` (v2 expérimental, install name `design-taste-frontend`) pour éviter un rendu générique/template.

Installation (si pas déjà fait dans le projet) :

```
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
```

**Obligatoire : montre la sortie brute réelle de cette commande dans ta réponse, pas un résumé.** Si la commande échoue (réseau restreint, dépôt inaccessible, etc.), dis-le explicitement avec le message d'erreur — ne continue pas en silence avec des dials choisis à la main en laissant croire que le skill a été appliqué. Si le skill ne peut vraiment pas être installé, le signaler clairement à l'utilisateur et lui demander comment procéder, plutôt que de construire le site sans lui et de ne pas le mentionner.

Une fois installé, cite dans ta réponse 2-3 règles concrètes tirées du contenu réel du SKILL.md (palette, typographie, système d'espacement) que tu appliques — pas seulement les valeurs de dials qu'on t'aura données.

```
npx skills add https://github.com/Leonxlnx/taste-skill --skill "redesign-existing-projects"
```

Ce second skill audite l'UI existante avant de corriger — utile pour ne pas jeter ce qui marche déjà (référencement du nom de domaine, structure connue des clients réguliers).

## Étape 1 — Calibrer les dials du skill selon le secteur

`taste-skill` expose 3 curseurs (1-10) : `DESIGN_VARIANCE`, `MOTION_INTENSITY`, `VISUAL_DENSITY`. Les régler selon le type de business identifié en phase 1 — mais le plancher ne descend jamais en dessous d'un rendu impressionnant et convaincant. Le site est l'argument de vente principal de la phase 3 : personne n'achète un abonnement de 35€/mois pour un site qui a l'air "correct pour un petit commerce". "Utilitaire" veut dire structure directe et geste principal évident (voir reference-types-business.md), jamais visuellement plat.

| Secteur | VARIANCE | MOTION | DENSITY | Logique |
|---|---|---|---|---|
| Restaurant gastronomique / bar à vin | 7-8 | 5-6 | 4-5 | Élégant, immersif, mouvement maîtrisé |
| Restaurant rapide / snack | 6-7 | 5-6 | 5-6 | Direct, énergique, appétissant |
| Taxiphone / téléboutique / réparation tech | 6-7 | 4-5 | 5-6 | Direct sur l'info, mais avec de vraies images et une vraie énergie visuelle — pas plat |
| Coiffeur / institut de beauté | 7-8 | 5-6 | 4-5 | Moderne, tendance, vivant |
| Artisan (plombier, électricien) | 5-6 | 3-4 | 5-6 | Confiance, clarté, mais soigné et pro, pas terne |
| Profession libérale (avocat, médecin) | 5-6 | 3-4 | 4-5 | Sobre mais premium, jamais austère |

Ces réglages sont un point de départ **indicatif, pas une consigne à recopier**. La décision finale revient à qui construit le site, à partir du contexte réel (contexte concurrentiel, références visuelles fournies, identité de marque existante) — le tableau sert à cadrer l'ordre de grandeur, pas à remplacer le jugement.

## Étape 1.5 — Imagerie (générée par IA si pas de vraie photo client)

Claude Code n'a aucun moteur d'image natif — il faut un outil externe (MCP) branché avec une clé API. Ne jamais laisser un placeholder "photo à ajouter" si une image générée peut le remplacer et rendre le site plus vendeur.

Installation recommandée (skill + CLI + MCP, basé sur Gemini, clé API gratuite disponible) :

```
/plugin marketplace add guinacio/claude-image-gen
/plugin install media-pipeline@media-pipeline-marketplace
```

Nécessite `GEMINI_API_KEY` en variable d'environnement. Alternative si ce plugin ne convient pas : MCP Replicate (`claude mcp add replicate -- npx -y @replicate/mcp-server`) pour accéder à FLUX/Stable Diffusion.

**Obligatoire : montre la sortie brute de l'installation, comme pour taste-skill (voir règle anti-auto-attestation de l'orchestrateur).**

Règles de contenu pour les images générées :
- Imagerie générique/stylisée représentant le service (ex : gros plan sur un écran de smartphone fissuré en cours de réparation, ambiance d'atelier) : OK sans restriction particulière.
- Ne jamais générer une image présentée comme "la vraie façade de la boutique" ou "notre équipe" si ce n'est pas une vraie photo — ça induirait le client final en erreur sur ce qu'il va trouver en poussant la porte. Si aucune vraie photo n'est disponible, soit générer une image clairement illustrative/non-spécifique, soit garder un placeholder honnête à remplacer par une vraie photo plus tard.
- Cohérence avec le skill de design : les images doivent respecter la palette et la discipline visuelle de `taste-skill`, pas l'inverse.

## Étape 2 — Structure de site standard

Sauf besoin contraire identifié en phase 1, le site doit contenir au minimum :

1. **Accueil** — proposition de valeur en une phrase, geste principal visible immédiatement (appeler / réserver / venir), photo ou visuel fort.
2. **Services / Menu / Prestations** — selon secteur, contenu réel collecté en phase 1.
3. **Contact** — adresse, téléphone cliquable, formulaire simple, carte Google Maps intégrée, horaires.
4. **Mentions légales** — SIRET, hébergeur, éditeur (obligatoire légalement en France).
5. Page dédiée horaires/localisation si le secteur le justifie (restaurant, commerce physique).

## Étape 3 — SEO on-page à intégrer dès la construction, pas après

- Title et meta description uniques par page, incluant ville + activité (ex : "Restaurant italien à Saint-Maur-des-Fossés — [Nom]")
- Balisage `schema.org/LocalBusiness` avec adresse, horaires, téléphone
- Attributs `alt` descriptifs sur toutes les images
- Un seul H1 par page, hiérarchie Hn cohérente
- Site rapide et mobile-first par construction (pas d'optimisation a posteriori)
- Lien vers/vers la fiche Google Business si elle existe ou vient d'être créée

## Étape 4 — Vérification avant livraison

Avant de considérer la phase terminée, vérifie toi-même :
- [ ] Tout le contenu affiché correspond à une info réelle collectée en phase 1 (aucun placeholder oublié visible)
- [ ] Le geste principal identifié en phase 1 (appeler, réserver, etc.) est visible sans scroller sur mobile
- [ ] Le site fonctionne et s'affiche correctement sur mobile
- [ ] Mentions légales présentes
- [ ] Rien ne casse en console

Une fois ces points validés, passer à la phase 3.
