<?php
include_once 'personnage.inc.php';

class aimer{

    public static function createlike($nomS, $idU){
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("insert into aimer(idU, nomP) values (:idU, :nomS)");
            $req->bindValue(':idU', $idU, PDO::PARAM_STR);
            $req->bindValue(':nomS', daopersonnage::getdistinctpersobynom($nomS)->getnom(), PDO::PARAM_STR);
            $req->execute();
    
            $resultat = $req->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
        }
        return $resultat;
    }

    public static function estlike($nomS, $idU){
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from aimer where idU=:idU and nomP=:nomS");
            $req->bindValue(':idU', $idU, PDO::PARAM_STR);
            $req->bindValue(':nomS', daopersonnage::getdistinctpersobynom($nomS)->getnom(), PDO::PARAM_STR);
            $req->execute();
    
            $resultat = $req->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
        }
        if($resultat){
            return true;
        }
        else{
            return false;
        }
    }

    public static function deletelike($nomS, $idU){
    
        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("delete from aimer where idU=:idU and nomP=:nomS");
            $req->bindValue(':idU', $idU, PDO::PARAM_STR);
            $req->bindValue(':nomS', daopersonnage::getdistinctpersobynom($nomS)->getnom(), PDO::PARAM_STR);
            $req->execute();
    
            $resultat = $req->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
        }
        return $resultat;
    }


    public static function getpersobyaimer(){
        $resultat = array();

        try {
            $cnx = connexionPDO();
            $req = $cnx->prepare("select * from personnage where nomP = any(select nomP from aimer)");
            $req->execute();
    
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
            while ($ligne) {
                if($ligne["niveautaverneS"]!=NULL){
                    //test si le personnage est un serviteur
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
    
}