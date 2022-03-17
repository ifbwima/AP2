<?php
class personnage{
    private $nomP;
    private $chemin;
    private $untype;

    public function __construct($unnom, $unchemin, $untype){
        $this->nomP = $unnom;
        $this->chemin = $unchemin;
        $this->untype = $untype;
    }

    public function getchemin(){
        return $this->chemin;
    }

    public function getnom(){
        return ($this->nomP);
    }

    public function gettype(){
        return $this->untype;
    }
}