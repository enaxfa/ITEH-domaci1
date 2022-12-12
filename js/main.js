$('#dodajForm').submit(function () {
  event.preventDefault();
  console.log("Dodavanje");
  const $form = $(this);
  const $input = $form.find('input, select, button, textarea');

  const serijalizacija = $form.serialize();
  console.log(serijalizacija);

  $input.prop('disabled', true);

  req = $.ajax({
    url: 'handler/dodajKnjigu.php',
    type: 'post',
    data: serijalizacija
  });

  req.done(function (res, textStatus, jqXHR) {
    if (res == "Ok") {
      alert("Knjiga je uspesno dodata");
      location.reload(true);
    } else console.log("Knjiga nije dodata " + res);
  });

  req.fail(function (jqXHR, textStatus, errorThrown) {
    console.error('Sledeca greska se desila: ' + textStatus, errorThrown)
  });
});



$('.btn-danger').click(function () {
  console.log("Brisanje");
  const trenutni = $(this).attr('data-id1');  //jQuery fja koja vraca vrednost prosledjenog atributa
  console.log('ID selektovane knjige za brisanje je: ' + trenutni);
  req = $.ajax({
    url: 'handler/obrisiKnjigu.php',
    type: 'post',
    data: { 'id': trenutni }
  });

  req.done(function (res, textStatus, jqXHR) {
    if (res == "Ok") {
      $(this).closest('tr').remove();
      alert('Uspesno ste obrisali knjigu');
      location.reload(true);
      console.log('Obrisan');
    } else {
      console.log("Knjiga nije izbrisana " + res);
      alert("Knjiga nije izbrisana ");

    }
  });

});



$('#btn').click(function () {
  $('#pregled').toggle();
});

$('#btnDodaj').submit(function () {
  $('#myModal').modal('toggle');
  return false;
});

$('#btnIzmeni').submit(function () {
  $('#myModal').modal('toggle');
  return false;
});


//promena vrednosti cba
$("#zanr").change(function(){
  var idZanra =  $('#zanr').val();
  $('#idZanra').val(idZanra);
  
});


//Edit
$('.btn-info').click(function () {

  const trenutni = $(this).attr('data-id2');
  console.log(trenutni);
  var naziv = $(this).closest('tr').children('td[data-target=naziv]').text();
  console.log(naziv);
  var autor = $(this).closest('tr').children('td[data-target=autor]').text();
  var zanr = $(this).closest('tr').children('td[data-target=zanr]').text();
  var idZanra = $(this).closest('tr').children('td[data-target=idZanra]').text();
  console.log(zanr);
  console.log(idZanra);
  


  $('#idKnjige').val(trenutni);
  $('#naziv').val(naziv);
  $('#autor').val(autor);
  document.getElementById('zanrOznaceni').value = idZanra;
});




//Updates
$('#izmeniForma').submit(function(){

  event.preventDefault();
  console.log("Izmena");
  const $form = $(this);
  const $input = $form.find('input, select, button, textarea');

  const serijalizacija = $form.serialize();
  console.log(serijalizacija);

  $input.prop('disabled', true);

  req = $.ajax({
    url: 'handler/azurirajKnjigu.php',
    type: 'post',
    data: serijalizacija
  });

  req.done(function (res, textStatus, jqXHR) {
    if (res == 'Ok') {
      alert("Knjiga je uspesno azurirana");
      location.reload(true);
    } else console.log("Knjiga nije azurirana " + res);
  });

  req.fail(function (jqXHR, textStatus, errorThrown) {
    console.error('Sledeca greska se desila: ' + textStatus, errorThrown)
  });


});

