<?php
include_once 'personnage.php';

class heros extends personnage{
    private $hpH;

    public function __construct($unnom, $unchemin, $unpouvoir, $untype){
        personnage::__construct($unnom, $unchemin, $untype);
        $this->hpH = $unpouvoir;
    }
    public function gethp(){
        return ($this->hpH);
    }
}