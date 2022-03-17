<?php
include_once "pdo.inc.php";
include_once "utilisateur.php";

class daoutilisateur{
    public static function createurutilisateur() {
        $resultat = array();
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from utilisateur");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                $resultat[] = new utilisateur($ligne["idU"], $ligne["nomU"], $ligne["prenomU"], $ligne["mailU"], $ligne["mdpU"]);
                $ligne = $req->fetch(PDO::FETCH_ASSOC);
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function getUtilisateurByMailU($mailU) {

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from utilisateur where mailU=:mailU");
            $req->bindValue(':mailU', $mailU, PDO::PARAM_STR);
            $req->execute();
        
            $resultat = $req->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function addUtilisateur($idU, $nomU, $prenomU, $mailU, $mdpU) {
        try {
            $cnx = connexionPDO();

            $req = $cnx->prepare("insert into utilisateur (idU, nomU, prenomU, mailU, mdpU) values(:idU, :nomU, :prenomU, :mailU,:mdpU)");
            $req->bindValue(':idU', $idU, PDO::PARAM_INT);
            $req->bindValue(':nomU', $nomU, PDO::PARAM_STR);
            $req->bindValue(':prenomU', $prenomU, PDO::PARAM_STR);
            $req->bindValue(':mailU', $mailU, PDO::PARAM_STR);
            $req->bindValue(':mdpU', $mdpU, PDO::PARAM_STR);
        
            $resultat = $req->execute();
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function getUtilisateurByMailU2($mailU) {

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from utilisateur where mailU=:mailU");
            $req->bindValue(':mailU', $mailU, PDO::PARAM_STR);
            $req->execute();
        
            $ligne = $req->fetch(PDO::FETCH_ASSOC);

            $resultat = new utilisateur($ligne["idU"], $ligne["nomU"], $ligne["prenomU"], $ligne["mailU"], $ligne["mdpU"]);
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function changenom($nom, $prenom, $mail){

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("UPDATE utilisateur SET nomU=:nom,prenomU=:prenom WHERE mailU=:mail");
            $req->bindValue(':nom', $nom, PDO::PARAM_STR);
            $req->bindValue(':prenom', $prenom, PDO::PARAM_STR);
            $req->bindValue(':mail', $mail, PDO::PARAM_STR);
            $req->execute();
        
            $resultat = $req->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
        }
        return $resultat;
    }
}