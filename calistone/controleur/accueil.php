<?php
//appel des fichiers du modele
include_once './modele/actualite.inc.php';

$ret = daoactualite::createuractu();

//appel des fichiers de la vue
include './vue/entete.html.php';
include './vue/vueaccueil.html.php';
include './vue/pied.html.php';
?>