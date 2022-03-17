<?php
//appel des fichiers du modele
include_once './modele/actualite.inc.php';

//creation des actualite a partir de la bdd
$ret = daoactualite::createuractu();

//appel des fichiers de la vue
include './vue/entete.html.php';
include './vue/vueactualite.html.php';
include './vue/pied.html.php';
?>