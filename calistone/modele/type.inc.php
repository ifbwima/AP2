<?php
class daotype{
    public function createurtype() {

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from type");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                new type($ligne["nomT"]);
                $ligne = $req->fetch(PDO::FETCH_ASSOC);
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
}