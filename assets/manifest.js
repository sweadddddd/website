/* Liste des visuels réellement disponibles. Vide tant que les images ne sont pas
   générées : les emplacements affichent alors un placeholder stylé, sans requête
   réseau (donc aucune erreur console). Le script scripts/generate-images.sh
   régénère ce fichier automatiquement après génération. */
window.TP_IMAGES = {};
