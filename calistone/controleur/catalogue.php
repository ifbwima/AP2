<?php
//appel des fichiers du modele
include_once "./modele/personnage.inc.php";
include_once "./modele/aimer.inc.php";
include_once "./modele/utilisateur.inc.php";

if(isset($_GET["aimer"])){
    //recuperation de 'aimer' pour ajouter un seviteur aimé
    $aimerS = $_GET["aimer"];
    $aimerU = 1;
    if(aimer::estlike($aimerS, $aimerU)){
        $result = aimer::deletelike($aimerS, $aimerU);
    }
    else{
        $result = aimer::createlike($aimerS, $aimerU);
    }
}

if (isset($_POST["nomP"])){ 
    //appel des personnages en fonction de la recherche si elle existe  
    $nomP=$_POST["nomP"];
    $ret = daopersonnage::getpersobynom($nomP);
}
else{
    //apppel de tous les personnages (avec filtre si defini)
    if($filtre != "aimer"){
        $ret = daopersonnage::createurS($filtre);
    }
    else{
        $ret = aimer::getpersobyaimer();
    }
}

//appel des fichiers de la vue
include './vue/entete.html.php';
include './vue/vuecatalogue.html.php';
include './vue/pied.html.php';
?>