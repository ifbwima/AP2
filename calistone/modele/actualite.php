<?php
class actualite{
    private $numA;
    private $dateA;
    private $titreA;
    private $noteA;

    public function __construct($unnum, $unedate, $untitre, $unenote){
        $this->numA = $unnum;
        $this->dateA = $unedate;
        $this->titreA = $untitre;
        $this->noteA = $unenote;
    }

    public function gettitre(){
        return $this->titreA;
    }

    public function getnote(){
        $this->noteA = preg_replace('/\./', ".<br/>", $this->noteA); 
        return $this->noteA;
    }
}