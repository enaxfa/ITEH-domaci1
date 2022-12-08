<?php
 require '../konekcija.php';
 require '../model/knjiga.php';


 if(isset($_POST['naziv']) && isset($_POST['autor']) && isset($_POST['zanr'])){
  $knjiga = new Knjiga(null,$_POST['naziv'],$_POST['autor'],($_POST['zanr']));
  $rez=$knjiga->insert($conn);
  
  if($rez){ //ako vrati objekat
    echo 'Ok';
 }else{ 
   echo 'No';
 }
 } 
  ?>