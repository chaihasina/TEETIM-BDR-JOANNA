<?php

/**** Librairie de code du Catalogue de produits TeeTIM */

/**
 * Obtient les thèmes et les produits dans une langue et catégorie données.
 * @param string $categorie Catégorie de produits (exemples : teeshirts, 
 * casquettes, etc.)
 * @param string $codeLangue Code en 2 lettres de la langue d'affichage.
 * @return array Tableau contenant les 2 tableaux contenant les thèmes et les
 * produits de cette catégorie.
 */
function obtenirCatalogue($categorie, $codeLangue, $critereTri)
{
  // Intégrer le fichier JSON contenant le catalogue
  $catalogue = json_decode(file_get_contents("data/$categorie.json"));
  // print_r($catalogue);

  // Obtenir les thèmes et les produits de ce catalogue
  $themes = [];
  $produits = [];
  // "Boucler" à travers le catalogue pour remplir ces deux tableaux
  // print_r($catalogue);
  foreach ($catalogue as $codeTheme => $detailTheme) {
    // Ramasser l'information sur les thèmes...
    $themes[$codeTheme] = $detailTheme->theme->$codeLangue;
    // Ramasser l'information sur les produits...
    // Il faut joindre tous les petits tableaux des produits dans chaque thème.
    $produits = array_merge($produits, $detailTheme->produits);
  }

  // Trier les produits avant de retourner le tableau
  // Il manque des fonctions de comparaison ("nom" et "dac")
  usort($produits, $critereTri);

  return [$themes, $produits];
}

function prixDesc($prd1, $prd2)
{
  // return $prd2->prix - $prd1->prix;
  if ($prd1->prix > $prd2->prix) {
    return -1;
  } else if ($prd2->prix > $prd1->prix) {
    return 1;
  } else {
    return 0;
  }
}

function prixAsc($prd1, $prd2)
{
  return $prd1->prix - $prd2->prix;
}

function ventesDesc($prd1, $prd2)
{
  return $prd2->ventes - $prd1->ventes;
}

function aleatoire($prd1, $prd2)
{
  $nbAlea = mt_rand() / mt_getrandmax() - 0.5;
  if ($nbAlea > 0) {
    return 1;
  } else {
    return -1;
  }
}
