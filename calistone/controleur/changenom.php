<?php

if($_POST["nom"]=="" or $_POST["prenom"]==""){
    $message='veuillez saisir un nom et un prenom';
}
else{  
    //recuperation du nom et du prenom de la page change nom
    $nom=$_POST["nom"];
    $prenom=$_POST["prenom"];
    $mail=$_POST["mail"];
    daoutilisateur::changenom($nom, $prenom, $mail);
}

//appel des fichiers de la vue
include './vue/entete.html.php';
include './vue/vuechangenom.html.php';
include './vue/pied.html.php';
?>