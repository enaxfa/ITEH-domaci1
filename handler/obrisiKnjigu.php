<?php
require '../konekcija.php';
require '../model/knjiga.php';

    $id =$_POST['id'];  //post id iz ajaxa smo poslali
    $knjiga = new Knjiga($id,null,null,null);
    if($knjiga->delete($conn,$id)){
      echo "Ok";
    }else{
      echo "No";
    }
 ?>