<?php
// Inclure les fichiers de librairies requis
include('lib/i18n.lib.php');

$languesDispo = obtenirLanguesDisponibles();
$langue = determinerLangue($languesDispo);
[$_ent, $_pp, $_] = obtenirTextesStatiques($langue, $page);

$directionEcriture = determinerDirectionEcriture($langue);
?>

<!DOCTYPE html>
<html lang="<?= $langue; ?>" dir="<?= $directionEcriture; ?>">

<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;500;900&family=Noto+Serif:ital,wght@0,400;0,900;1,400&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>teeTIM // fibre naturelle ... conception artificielle</title>
	<meta name="description" content="Page d'accueil du concepteur de vêtements 100% fait au Québec, conçus par les étudiants du TIM à l'aide de designs produits par intelligence artificielle, et fabriqués avec des fibres 100% naturelles et biologiques.">
	<link rel="stylesheet" href="css/styles.css">
	<link rel="icon" type="image/png" href="images/favicon.png" />
	<script src="js/main.js" defer></script>
</head>

<body>
	<div class="conteneur">
		<header>
			<nav class="barre-haut">
				<?php foreach ($languesDispo as $codeLangue): ?>
					<a
						class="<?= ($langue == $codeLangue) ? 'actif' : '' ?>"
						href="?lan=<?= $codeLangue ?>">
						<?= $codeLangue ?>
					</a>
				<?php endforeach; ?>

			</nav>
			<nav class="barre-logo">
				<label for="cc-btn-responsive" class="material-icons burger">menu</label>
				<a class="logo" href="index.php"><img src="images/logo.png" alt="<?php echo $_ent->altLogo; ?>"></a>
				<a class="material-icons panier" href="panier.php">shopping_cart</a>
				<input class="recherche" type="search" name="motscles" placeholder="<?php echo $_ent->placeholderRecherche; ?>">
			</nav>
			<input type="checkbox" id="cc-btn-responsive">
			<nav class="principale">
				<label for="cc-btn-responsive" class="menu-controle material-icons">close</label>
				<a href="teeshirts.php" class="<?= $page == 'teeshirts' ? 'actif' : '' ?>"><?= $_ent->menuTeeshirts; ?></a>
				<a href="casquettes.php" class="<?= $page == 'casquettes' ? 'actif' : '' ?>"><?= $_ent->menuCasquettes; ?></a>
				<a href="hoodies.php" class="<?= $page == 'hoodies' ? 'actif' : '' ?>"><?= $_ent->menuHoodies ?></a>
				<span class="separateur"></span>
				<a href="aide.php" class="<?= $page == 'aide' ? 'actif' : '' ?>"><?= $_ent->menuAide ?></a>
				<a href="apropos.php" class="<?= $page == 'apropos' ? 'actif' : '' ?>"><?= $_ent->menuNous ?></a>
			</nav>
		</header>