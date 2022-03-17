<?php 
class daoespece{

    public function createurespece() {

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from espece");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                new espece($ligne["nomE"]);
                $ligne = $req->fetch(PDO::FETCH_ASSOC);
            }
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage();
            die();
        }
    }
    
}