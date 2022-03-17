<?php
include_once 'personnage.php';
class serviteur extends personnage{
    private $niveautaverneS;
    private $pvS;
    private $attaqueS;
    private $uneespece;

    public function __construct($unnom, $unchemin, $unniveau, $unnbpv, $unnbpa, $untype, $uneespece){
        personnage::__construct($unnom, $unchemin, $untype);
        $this->niveautaverneS = $unniveau;
        $this->pvS = $unnbpv;
        $this->attaqueS = $unnbpa;
        $this->uneespece = $uneespece;
    }

    public function gettaverne(){
        return $this->niveautaverneS;
    }

    public function getpv(){
        return $this->pvS;
    }

    public function getattaque(){
        return $this->attaqueS;
    }

    public function getespece(){
        return $this->uneespece;
    }

}