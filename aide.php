<?php
// Indiquer la page
$page = "aide";
include("parties-communes/entete.php");
/** @var stdClass $_ */
?>
<main class="page-aide">
    <article class="amorce">
        <h1><?= $_->titrePage; ?></h1>
    </article>
    <article class="principal">
        <?= $_->aVenir; ?>
    </article>
</main>
<?php include("parties-communes/pied2page.php"); ?>