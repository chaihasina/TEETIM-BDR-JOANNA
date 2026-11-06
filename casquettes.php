<?php
// Indiquer la page
$page = "casquettes";
include("parties-communes/entete.php");
/** @var stdClass $_ */
?>
<main class="page-produits page-casquettes">
	<article class="amorce">
		<h1><?= $_->titrePage ?></h1>
	</article>
	<article class="principal">
		<?= $_->aVenir ?>
	</article>
</main>
<?php include("parties-communes/pied2page.php"); ?>