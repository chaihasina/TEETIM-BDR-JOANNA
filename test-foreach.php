<?php
// Tableau simple (numérique)
$fruits = [
  "Pamplemousse",
  "Grenade",
  "Kiwi"
];

foreach ($fruits as $unFruit) {
  echo "<p>$unFruit</p>";
}

// Tableau associatif
$groupe = [
  "e987656" => "Marc Morin",
  "e765768" => "Éloïse Bonin",
  "e345667" => "Monsieur Untel"
];

foreach ($groupe as $noDossier => $nomPersonne) {
  echo "<p>$nomPersonne (<i>$noDossier</i>)</p>";
}
