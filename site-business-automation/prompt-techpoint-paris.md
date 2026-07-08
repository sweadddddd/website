Lis ORCHESTRATEUR.md puis les fichiers de phase dans l'ordre — je les ai mis à jour, relis-les en entier même si tu as déjà travaillé sur ce projet, notamment la nouvelle règle anti-auto-attestation et la philosophie du rendu visuel dans ORCHESTRATEUR.md.

## Contexte de la session précédente

Deux écarts découverts et corrigés depuis :
1. Tu avais annoncé avoir utilisé `taste-skill` sans jamais l'installer. Cette fois, prouve chaque installation avec la sortie brute réelle de la commande — une case cochée sans preuve jointe compte comme non faite.
2. Le rendu était trop plat/générique — j'avais fixé des dials trop timides en partant du principe erroné qu'un petit commerce devait avoir un design sobre. C'est corrigé : le site est l'argument de vente principal de la phase 3, il doit être impressionnant et convaincant, pas "correct pour un petit commerce".

## Sur les dials — libre arbitre, pas une valeur imposée

`reference-types-business.md` te donne des fourchettes indicatives par secteur, pas des valeurs à recopier. Détermine toi-même les valeurs de VARIANCE / MOTION / DENSITY à partir : du secteur réel, du contexte concurrentiel (voir plus bas), et des références visuelles jointes à ce message (captures d'un site LDLC — pas à copier littéralement, c'est un site e-commerce national avec un budget photo pro, pas un commerce de réparation de quartier, mais ça illustre le niveau d'énergie visuelle et de confiance que le client final apprécie). Justifie ton choix final en 2-3 phrases avant de coder.

## Fiche business — Tech Point Paris

- Nom : Tech Point Paris
- Secteur : vente et réparation de téléphonie/informatique (smartphones, tablettes, écrans, batteries) + activité taxiphone/import-export selon le RCS
- Adresse : 73 rue de Reuilly, 75012 Paris (métro Reuilly-Diderot, lignes 1 et 8)
- Forme juridique : SARL, SIRET 814 456 562 00010, créée en 2015
- Horaires confirmés sur plusieurs annuaires convergents : lundi à samedi 10h-20h
- Téléphone remonté de façon convergente sur annuaires : 01 75 51 02 15 (à confirmer avant diffusion large — pas de source primaire ouverte)

## Diagnostic

- Aucun site fonctionnel actuellement : le domaine techpointparis.com est une page de parking, pas un vrai site
- Aucune fiche Google Business confirmée, aucun réseau social trouvé
- Avis existants : note 3,2/5 sur 30+ avis (répartition polarisée), un avis positif concret sur une réparation de tablette Samsung
- Concurrence directe très dense : quartier Montgallet, le pôle de réparation téléphonie/informatique le plus dense de Paris. Concurrents à moins de 300m : Atelier Montgallet, Montgallet Informatique, New Montgallet Informatique, Cy Tech, Inforama, Phoenix Phone, Deadphones, Phone Center, Bigophone, L'Atelier du Smartphone. Plusieurs ont déjà un site avec garantie affichée (12 mois), label QualiRépar, positionnement éco-responsable, avis Google consolidés 4-5/5.

## Infos non confirmées — placeholders explicites, ne jamais inventer une valeur qui a l'air réelle

- Dimanche (horaires contradictoires selon les sources) → `[À CONFIRMER]`
- Label QualiRépar ou garantie formelle sur les réparations → `[À CONFIRMER]`
- Marques de téléphones/tablettes prises en charge → `[À CONFIRMER]`
- Délai moyen de réparation → `[À CONFIRMER]`
- Tarifs indicatifs → `[À CONFIRMER]`
- Nom du gérant (Golam Morshed Muhammad) → ne pas afficher sans confirmation explicite du client

## Imagerie

Aucune vraie photo du commerce disponible. Installe l'outil de génération d'images (voir 02-creation-site.md, étape 1.5) et génère au moins un visuel hero + des visuels pour les services, en respectant la palette du skill de design. Budget cible : reste sous 1$ pour l'ensemble des images de ce projet — vérifie quels modèles le plugin expose (Flash-Lite Image ou Imagen 4 Fast sont moins chers que le modèle par défaut du plugin) et choisis en conséquence, en me montrant les prix réels avant de lancer la génération en volume. Jamais d'image présentée comme "la vraie façade" ou "notre équipe" — reste sur de l'illustratif/générique tant qu'on n'a pas de vraies photos client.

## Déroulé attendu

1. Ne relance pas une phase 1 complète, le contexte ci-dessus la remplace — complète uniquement les points "à confirmer" si tu trouves une source fiable
2. Phase 2 : installe taste-skill (preuve brute obligatoire), détermine tes propres dials en les justifiant, installe l'outil d'image (preuve brute + vérification de prix), génère les visuels, construis le site
3. Phase 2.5 : vérification qualité avec preuve réelle pour chaque point de la checklist, pas une confirmation de mémoire
4. Phase 3 : proposition commerciale appuyée sur le constat concurrentiel (10+ concurrents à moins de 300m avec site et garantie affichés, pas Tech Point Paris)

Montre le résultat final (captures desktop + mobile, sortie des commandes clés) et la proposition commerciale. Signale-moi tout écart, échec ou impossibilité plutôt que de contourner en silence.
