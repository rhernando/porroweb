  $(document).ready(function() {
    $('.equipo').click(function(){
        var imagen = $(this).find('img');
        $('#seleccion').append(imagen);

    });
  });