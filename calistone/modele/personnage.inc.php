<?php
//appel de la connexion pdo et des classes metiers
include_once 'pdo.inc.php';
include_once 'heros.php';
include_once 'serviteur.php';

class daopersonnage{
    public static function createurS($filtre) {
        //fonction qui creer des objets serviteurs a partir de la bdd
        $resultat = array();
    
        try {
            $cnx = connexionPDO();
            //switch pour varier la requete selon le filtre
            switch($filtre){
                case("defaut"):
                    $req = $cnx->prepare("select * from personnage");
                    break;
                case("taverne"):
                    $req = $cnx->prepare("select * from personnage order by niveautaverneS");
                    break;
                case("pv"):
                    $req = $cnx->prepare("select * from personnage order by pvS");
                    break;
                case("attaque"):
                    $req = $cnx->prepare("select * from personnage order by attaqueS");
                    break;
                case("espece"):
                    $req = $cnx->prepare("select * from personnage order by nomE");
                    break;
            }
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            
            while ($ligne) {
                //le if test si le personnage est un serviteur
                if($ligne["niveautaverneS"]!=NULL ){
                    $resultat[] = new serviteur($ligne["nomP"], $ligne["chemin"], $ligne["niveautaverneS"], $ligne["pvS"], $ligne["attaqueS"], $ligne["nomT"], $ligne["nomE"]);
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
                else{
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function createurH() {
        //fonction qui cree des objets heros a partir de la bdd
        $resultat = array();
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from personnage");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                if($ligne["niveautaverneS"]==NULL){
                    $resultat[] = new heros($ligne["nomP"], $ligne["chemin"], $ligne["pouvoirH"], $ligne["nomT"]);
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
                else{
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function getpersobynom($nomP){
        //fonction qui cree des objets serviteurs en fonction d'un nom pris en parametres
        $resultat = array();
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from personnage where nomP like :nomP");
            $req->bindValue(':nomP', "%".$nomP."%", PDO::PARAM_STR);
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                if($ligne["niveautaverneS"]!=NULL){
                    $resultat[] = new serviteur($ligne["nomP"], $ligne["chemin"], $ligne["niveautaverneS"], $ligne["pvS"], $ligne["attaqueS"], $ligne["nomT"], $ligne["nomE"]);
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
                else{
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }

    public static function getdistinctpersobynom($nomP){
        //fonction qui cree des objets serviteurs en fonction d'un nom pris en parametres
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select distinct * from personnage where nomP like :nomP");
            $req->bindValue(':nomP', "%".$nomP."%", PDO::PARAM_STR);
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                if($ligne["niveautaverneS"]!=NULL){
                    $resultat = new serviteur($ligne["nomP"], $ligne["chemin"], $ligne["niveautaverneS"], $ligne["pvS"], $ligne["attaqueS"], $ligne["nomT"], $ligne["nomE"]);
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
                else{
                    $ligne = $req->fetch(PDO::FETCH_ASSOC);
                }
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }
}
?>