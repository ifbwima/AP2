<?php
include_once 'utilisateur.inc.php';
class utilisateur{
    private $idU;
    private $nomU;
    private $prenomU;
    private $mailU;
    private $mdpU;

    public function __construct($unid, $unnom, $unprenom, $unmail, $unmdp){
        $this->idU = $unid;
        $this->nomU = $unnom;
        $this->prenomU = $unprenom;
        $this->mailU = $unmail;
        $this->mdpU = $unmdp;
    }

    public function getid(){
        return $this->idU;
    }

    public function getnom(){
        return $this->nomU;
    }
    public function getprenom(){
        return $this->prenomU;
    }
    public function getmail(){
        return $this->mailU;
    }
    public function getmdp(){
        return $this->mdpU;
    }

    public static function createuruser($unmail){
        $ret = daoutilisateur::getutilisateurbymailU($unmail);
        $user = new utilisateur($ret['idU'], $ret['nomU'], $ret['prenomU'], $ret['mailU'], $ret['mdpU']);
        return $user;
    }
}