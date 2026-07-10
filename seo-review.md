# Review SEO — Tech Point Paris

*Audit réalisé sur le site livré (`index.html`, `mentions-legales.html`) + stratégie de
référencement local. Objectif : être trouvé quand un client cherche « réparation téléphone
Paris 12 » et rattraper les concurrents du quartier Montgallet.*

---

## 1. Constat de départ (SEO actuel du business)

- **Aucune présence indexable** avant ce site : `techpointparis.com` était une page de parking.
- **Aucune fiche Google Business confirmée** : absence totale du pack local Google Maps, là où
  la majorité des recherches de réparation se décident (« réparation iPhone près de moi »).
- **Concurrence dense** : 10+ ateliers à moins de 300 m (quartier Montgallet), plusieurs avec
  site, garantie affichée, label QualiRépar et avis Google 4-5/5. Tech Point Paris partait
  invisible face à eux.
- **Réputation** : 3,2/5 sur 30+ avis (polarisés) — un signal à travailler (voir §4).

## 2. Audit on-page du site livré (vérifié dans le code)

| Critère | État | Détail |
|---|---|---|
| Title unique par page, ville + activité | ✅ | « Réparation téléphone et tablette Paris 12 : Tech Point Paris… » |
| Meta description par page | ✅ | Présente, avec téléphone et localisation |
| Un seul H1, hiérarchie Hn | ✅ | 1 H1, H2 par section, H3 sur les sous-blocs |
| `schema.org/LocalBusiness` (JSON-LD) | ✅ | Type ElectronicsStore + MobilePhoneStore, adresse, géo, horaires, `makesOffer`, `hasMap` |
| Attributs `alt` descriptifs sur images | ✅ | Les 5 visuels ont un alt ciblé (« Réparation d'écran… ») |
| Images crawlables | ✅ *(corrigé)* | Passées de l'injection JS à des `<img>` statiques + `width`/`height` (limite le CLS) |
| `<!doctype html>` + `<html lang="fr">` | ✅ *(corrigé)* | Ajoutés (signal de langue, validité) |
| Canonical + Open Graph + Twitter Card | ✅ | Canonical par page, OG (image = hero), `twitter:summary_large_image`, `og:locale` fr_FR |
| Mobile-first | ✅ | Responsive vérifié 390 px, geste « appeler » accessible (header + barre fixe) |
| Poids des images | ✅ | Optimisées ~31 Mo → 300 Ko (chargement rapide = critère Google) |
| `robots.txt` + `sitemap.xml` | ✅ *(ajoutés)* | Sitemap déclaré dans robots.txt |
| Carte Google Maps intégrée | ✅ | iframe + lien itinéraire |
| `theme-color`, favicon | ✅ | Favicon TP, theme-color marine |

**Bilan on-page : solide.** Les fondamentaux techniques sont en place dès la construction, pas
rajoutés après coup. Ce qui reste dépend de la mise en ligne et du contenu client (ci-dessous).

## 3. Mots-clés locaux à viser

Requêtes à fort intérêt commercial et géolocalisées (déjà reflétées dans les titres et le
contenu, à renforcer avec la fiche Google et de futures pages) :

- **Réparation** : « réparation téléphone Paris 12 », « réparation iPhone Montgallet »,
  « réparer écran smartphone Reuilly », « changer batterie iPhone Paris 12 »,
  « réparation tablette Paris 12 », « réparation téléphone Reuilly-Diderot ».
- **Vente / accessoires** : « téléphone reconditionné Paris 12 », « accessoires smartphone Montgallet ».
- **Intention urgente** : « réparation écran cassé aujourd'hui Paris 12 », « réparateur iPhone près de moi ».

## 4. Stratégie SEO local (le vrai levier ici)

1. **Créer / revendiquer la fiche Google Business Profile** (priorité n°1, contenu déjà rédigé dans
   `google-business-profile.md`). C'est ce qui fait apparaître la boutique dans Google Maps et le
   pack local. Sans elle, le meilleur site reste sous les concurrents.
2. **Cohérence NAP** (Name, Address, Phone) identique partout : site, fiche Google, annuaires.
   Aujourd'hui le numéro `01 75 51 02 15` doit être confirmé avant diffusion large — un NAP
   incohérent pénalise le référencement local.
3. **Avis clients** : répondre publiquement et poliment à TOUS les avis (y compris les négatifs)
   pour montrer un commerce actif, et solliciter un avis après chaque réparation réussie. Passer
   de 3,2/5 vers le haut est un des signaux locaux les plus visibles. L'avis positif existant
   (tablette Samsung) prouve que la matière est là.
4. **Citations / annuaires** : présence cohérente sur PagesJaunes, 118712, Mappy, Yelp, etc.
   (même nom, même adresse, même téléphone) renforce la légitimité locale.
5. **Photos régulières** sur la fiche Google (devanture, atelier, réparations) : les fiches avec
   photos sont favorisées et rassurent.

## 5. Technique / mise en ligne (à faire à l'hébergement)

- **Nom de domaine** : racheter `techpointparis.com` (page de parking) ou choisir un autre nom.
- **HTTPS** obligatoire (critère Google + confiance). Fourni par la plupart des hébergeurs.
- **Vitesse** : le site est léger (HTML/CSS statique, images compressées) ; viser un bon score
  Core Web Vitals dès l'hébergement.
- **Soumettre le `sitemap.xml`** dans Google Search Console une fois en ligne, et suivre
  l'indexation + les requêtes réelles.

## 6. Plan d'action priorisé

**Quick wins (jours) :**
1. Publier la fiche Google Business (contenu prêt) → visibilité Maps immédiate.
2. Mettre le site en ligne (domaine + HTTPS) et soumettre le sitemap à la Search Console.
3. Confirmer le numéro et l'harmoniser partout (NAP).

**Court terme (semaines) :**
4. Répondre aux avis existants + lancer la collecte d'avis après réparation.
5. Compléter les infos « à confirmer » (garantie, marques, délais, tarifs) : plus de contenu
   réel = plus de mots-clés couverts.
6. Harmoniser les citations sur les principaux annuaires.

**Moyen terme (mois) :**
7. Ajouter des pages dédiées par prestation/marque (« Réparation écran iPhone Paris 12 »,
   « Remplacement batterie Samsung »…) pour capter des requêtes précises.
8. Publier des posts Google Business réguliers (promo, nouveauté, rappel horaires).

## 7. Ce qu'on ne promet pas

Aucune garantie de position n°1 sur Google (personne ne peut l'assurer sérieusement). On met en
place les bonnes pratiques et la visibilité locale ; le classement se construit avec le temps,
les avis et la fiche Google active.

> Note : ce review a été réalisé sans plugin SEO dédié (le skill `searchfit-seo` du catalogue
> claude.ai n'était pas activable dans cet environnement). Il s'appuie sur l'audit réel du code
> livré et sur les bonnes pratiques SEO local. Le plugin pourra affiner le suivi une fois activé.
