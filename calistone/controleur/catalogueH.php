<?php
include_once "./modele/personnage.inc.php";

$ret = daopersonnage::createurH();

include './vue/entete.html.php';
include './vue/vuecatalogueH.html.php';
include './vue/pied.html.php';
?>