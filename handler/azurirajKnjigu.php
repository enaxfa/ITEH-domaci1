<?php
 require '../konekcija.php';
 require '../model/knjiga.php';
 require '../model/zanr.php';


 if(isset($_POST['idKnjige']) && isset($_POST['idZanra']) && isset($_POST['naziv']) && isset($_POST['autor']) && isset($_POST['zanr'])){
  $knjigaId=$_POST['idKnjige'];
  $naziv=$_POST['naziv'];
  $autor=$_POST['autor'];
  $zanr=$_POST['idZanra'];

  $knjiga=new Knjiga($knjigaId,$naziv,$autor,$zanr);
  $rezultat=$knjiga->update($conn);
  
  if($rezultat){
    echo 'Ok';
 }else{ 
   echo 'No';
   echo $status;
 }
 } 
  ?>