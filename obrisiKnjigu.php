<?php
include 'konekcija.php';
include 'model/knjiga.php';

    $id =$_POST['id'];
    $knjiga = new Knjiga($id,null,null,null);
    if($knjiga->delete($conn,$id)){
      echo "Ok";
    }else{
      echo "No";
    }
 ?>