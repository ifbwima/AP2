<?php
//appel des fichiers du modele
include_once './modele/authentification.inc.php';

if (isset($_POST["nom"]) && isset($_POST["prenom"]) && isset($_POST["mailU"]) && isset($_POST["mdpU"])){
    //recuperation des données d'inscription   
    $nomU=$_POST["nom"];
    $prenomU=$_POST["prenom"];
    $mailU=$_POST["mailU"];
    $mdpU=$_POST["mdpU"];
    $mdpUU=$_POST["2mdpU"];
}
else{
    //sinon, applique du vide
    $nomU="";
    $prenomU="";
    $mailU="";
    $mdpU="";
    $mdpUU="";
}

//creation des utilisateurs en objet depuis la bdd
$lesutilisateurs = daoutilisateur::createurutilisateur();

if($nomU != "" && $prenomU != "" && $mailU != "" && $mdpU != "" && $mdpU == $mdpUU){
    //si tout est correct alors on l'insert et le connecte
    daoutilisateur::addUtilisateur(count($lesutilisateurs)+1, $nomU, $prenomU, $mailU, $mdpU);
    login($mailU, $mdpU);
    $user = utilisateur::createuruser($mailU);
}

//appel des fichiers de la vue
include './vue/entete.html.php';
if(!isLoggedOn()){
    //inscription si echec
    include './vue/vueinscription.html.php';
}
else{
    //le nouveau profil si reussi
    include './vue/vueprofil.html.php';
}
include './vue/pied.html.php';
?>