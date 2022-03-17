<?php
include_once "controleur/controleurprincipal.php";
include_once "modele/pdo.inc.php";
include_once "modele/authentification.inc.php";

if (isset($_GET["action"])) {
    //recuperation de 'action' en methode get
    $action = $_GET["action"];
} 
else {
    $action = "defaut";
}

if (isset($_GET["filtre"])) {
    //recuperation du filtre et appel du catalogue si filtre existant
    $filtre = $_GET["filtre"];
    $action = "catalogue";
} 
else {
    $filtre =  "defaut";
}

$fichier = controleurPrincipal($action);
include_once "controleur/$fichier";
?>