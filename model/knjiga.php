<?php

class Knjiga{
  public $IdKnjige;
  public $NazivKnjige;
  public $Autor;
  public $Zanr;

  function __construct($IdKnjige,$NazivKnjige,$Autor,$Zanr) {
        $this->IdKnjige = $IdKnjige;
        $this->NazivKnjige = $NazivKnjige;
        $this->Autor = $Autor;
        $this->Zanr = $Zanr;
    }
}
