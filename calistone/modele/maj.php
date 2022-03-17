<?php
include "bd.inc.php";
class maj{
    
    private $numM;
    private $dateM;
    private $noteM;
    private $unnumA;

    public function __construct($unnum, $unedate, $unenote, $unnumA){
        $this->numM = $unnum;
        $this->dateM = $unedate;
        $this->noteM = $unenote;
        $this->unnumA = $unnumA;
    }
}