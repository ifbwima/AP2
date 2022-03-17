<?php
include_once 'actualite.php';

class daoactualite{

    public static function createuractu() {
        $resultat = array();
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from actualite");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                $resultat[] = new actualite($ligne["numA"], $ligne["dateA"], $ligne["titreA"], $ligne["noteA"]);
                $ligne = $req->fetch(PDO::FETCH_ASSOC);
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
        return $resultat;
    }
    
}
?>