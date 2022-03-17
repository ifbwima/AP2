<?php
//appel des fichiers du modele
include_once './modele/authentification.inc.php';

if (isset($_POST["mailU"]) && isset($_POST["mdpU"])){  
    //recuperation du mail et du mdp de la page login 
    $mailU=$_POST["mailU"];
    $mdpU=$_POST["mdpU"];
}
elseif(!isLoggedOn()){
    //si l'utilisateur n'est pas deja connecter, alors le mail et le mdp valent ""
    $mailU="";
    $mdpU="";
}

if (isset($_GET["deco"])) {
    //deconnexion si bouton appuyer
    logout();
} 

if($mailU != "" && !isLoggedOn()){
    //test pour faire la connexion
    login($mailU, $mdpU);
    $user = utilisateur::createuruser($mailU);
}
else{
    //sinon il cherche qui est connecter pour pouvoir afficher le profil
    $user = whoisLoggedOn();
}


//appel des fichiers de la vue
include './vue/entete.html.php';
if(isLoggedOn()){
    //profil si utilisateur connécté
    include './vue/vueprofil.html.php';
}else{
    //connexion si pas co
    include './vue/vueconnexion.html.php';
}
include './vue/pied.html.php';
?>