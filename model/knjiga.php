<?php


class Knjiga{
  public $IdKnjige;
  public $NazivKnjige;
  public $Autor;
  public $Zanr;

  function __construct($IdKnjige=null,$NazivKnjige=null,$Autor=null,$Zanr=null) {
        $this->IdKnjige = $IdKnjige;
        $this->NazivKnjige = $NazivKnjige;
        $this->Autor = $Autor;
        $this->Zanr = $Zanr;
    }

    public function insert($conn){
      return $conn->query("INSERT INTO knjiga(NazivKnjige,Autor,Zanr) VALUES ('$this->NazivKnjige','$this->Autor',$this->Zanr)");
  }

  public function delete($conn,$id){
    return $conn->query("DELETE FROM knjiga where IdKnjige=$id");
  }

  public function update($conn){
    if($conn->query("UPDATE Knjiga SET NazivKnjige='$this->NazivKnjige',Autor='$this->Autor',Zanr=$this->Zanr where IdKnjige=$this->IdKnjige")){
      return true;
    }else{
      return false;
    }
}

}
