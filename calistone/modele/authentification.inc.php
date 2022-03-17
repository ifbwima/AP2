<?php
include_once "utilisateur.inc.php";

function login($mailU, $mdpU) {
    if (!isset($_SESSION)) {
        session_start();
    }

    $util = daoutilisateur::getUtilisateurByMailU($mailU);
    $mdpBD = $util["mdpU"];

    if ($mdpBD == $mdpU) {
        // le mot de passe est celui de l'utilisateur dans la base de donnees
        $_SESSION["mailU"] = $mailU;
        $_SESSION["mdpU"] = $mdpBD;
    }
}


function logout() {
    if (!isset($_SESSION)) {
        session_start();
    }
    unset($_SESSION["mailU"]);
    unset($_SESSION["mdpU"]);
}


function getMailULoggedOn(){
    if (isLoggedOn()){
        $ret = $_SESSION["mailU"];
    }
    else {
        $ret = "";
    }
    return $ret;
        
}


function isLoggedOn() {
    if (!isset($_SESSION)) {
        session_start();
    }
    $ret = false;

    if (isset($_SESSION["mailU"])) {
        $util = daoutilisateur::getUtilisateurByMailU($_SESSION["mailU"]);
        if ($util["mailU"] == $_SESSION["mailU"] && $util["mdpU"] == $_SESSION["mdpU"]
        ) {
            $ret = true;
        }
    }
    return $ret;
}


function whoisLoggedOn() {
    $ret = daoutilisateur::getUtilisateurByMailU2($_SESSION["mailU"]);
    return $ret;
}
