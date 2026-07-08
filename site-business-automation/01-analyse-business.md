# Phase 1 — Analyse du business

## Objectif

Comprendre le business en profondeur avant de toucher au moindre code. Sortie attendue : un rapport structuré (`business-analysis.md` ou équivalent dans le projet) qui sert de base factuelle pour les phases 2 et 3.

## Étape 1 — Collecte des informations de base

À partir de ce que l'utilisateur fournit, complète ce qui manque en cherchant activement (web_search, web_fetch) :
- Nom exact, adresse complète, zone de chalandise
- Secteur d'activité précis (pas juste "restaurant" — cuisine ouzbek, brasserie, fast-food ?)
- Horaires d'ouverture
- Réseaux sociaux existants (Instagram, Facebook)
- Fiche Google Business : existe-t-elle ? à jour ? note et nombre d'avis ?
- Site existant : y'a-t-il un site ? Si oui, récupère l'URL et analyse-le (voir étape 3).

Si des infos critiques manquent (ex : pas moyen de savoir si le business a un site du tout), pose la question à l'utilisateur — une seule fois, groupée, pas en boucle.

## Étape 2 — Identifier le type de besoin

Détermine dans laquelle de ces situations le business se trouve :

- **Aucun site, aucune présence en ligne structurée** → priorité absolue : exister sur Google (fiche Business + site basique indexable).
- **Aucun site mais présence sociale active** (Instagram bien tenu, etc.) → le site doit relayer/renforcer ce qui marche déjà, pas repartir de zéro sur le ton.
- **Site existant mais obsolète/mauvais** (pas responsive, lent, infos périmées, design des années 2010) → refonte, en gardant ce qui a de la valeur SEO (ancienneté du nom de domaine, backlinks existants).
- **Site existant correct** → ne pas forcer une refonte inutile. Évaluer plutôt l'opportunité d'un abonnement maintenance/SEO seul.

## Étape 3 — Analyse SEO (si site existant)

Vérifie et note :
- Responsive / mobile-friendly (le vérifier réellement, pas supposer)
- Vitesse de chargement perçue
- Title et meta description présents et pertinents (contiennent-ils ville + activité ?)
- Présence d'un schema.org LocalBusiness
- Structure Hn cohérente
- Liens de contact fonctionnels et visibles (voir étape 4)
- Présence sur Google Maps / fiche Business Profile réclamée

## Étape 4 — Besoins spécifiques au secteur (liens de contact et fonctionnalités)

Consulte `reference-types-business.md` pour la liste détaillée par secteur. Le principe général : chaque secteur a des "liens de contact" ou fonctionnalités attendues qui, absents, coûtent des clients. Exemples types :

- **Restaurant** : téléphone cliquable, lien réservation (Zenchef/TheFork ou formulaire simple), menu à jour, horaires visibles immédiatement, lien Google Maps, photos des plats.
- **Taxiphone / téléboutique** : téléphone cliquable en premier, WhatsApp cliquable, liste claire des services (transfert d'argent, réparation, forfaits), horaires.
- **Coiffeur / institut** : prise de rendez-vous en ligne (ou lien vers Planity/Treatwell), galerie photo, tarifs.
- **Artisan (plombier, électricien)** : numéro cliquable en évidence dès le chargement, zone d'intervention précisée, urgence 24/7 si applicable, avis clients.
- **Profession libérale** : prise de RDV, présentation claire des services, mentions légales renforcées (ordre professionnel, etc.).

Si le business ne rentre dans aucune case connue, applique le même raisonnement : quel est le geste que le client final veut faire en 10 secondes sur ce site (appeler, réserver, venir, commander) — et assure-toi que ce geste est au premier plan.

## Étape 5 — Concurrence locale (rapide, pas exhaustif)

Une recherche rapide sur 2-3 concurrents directs dans la même zone : ont-ils un site ? Est-il meilleur ? Cela nourrit l'argumentaire de la phase 3 ("vos concurrents à moins de 500m ont X, pas vous").

## Livrable de fin de phase

Un résumé court et exploitable, structuré ainsi :
1. Fiche business (nom, secteur, ville, situation actuelle en une phrase)
2. Diagnostic (aucun site / site à refaire / site correct)
3. 3 à 5 points d'amélioration concrets et priorisés
4. Éléments spécifiques au secteur à absolument intégrer
5. Infos manquantes à demander au client avant la création (si besoin)

Ne passe à la phase 2 qu'une fois ce résumé produit.
