  $(document).ready(function() {
    $('.equipo').click(function(){
        var imagen = $(this).find('img');
        imagen.click(function(){
            restaurar(this);
        });

        $('#seleccion #divequipos').append(imagen);
    });

    $('#validar').click(function(){
        var imgs = $("#seleccion #divequipos").find("img");
        if (imgs.length != <%= @porra.num_equipos %>)
            alert("Debes seleccionar <%= @porra.num_equipos %> equipos");

        var suma_puntos = 0;
        for (var i = 0; i < imgs.length;i++){
            suma_puntos += parseInt(imgs[i].id.substring(imgs[i].id.lastIndexOf("-")+1));
        }
                alert(suma_puntos);
        if (suma_puntos > <%= @porra.max_val_equipos %>)
            alert("La suma del valor de los equipos no pueden superar los <%= @porra.max_val_equipos %> puntos");

    });
  });

  function restaurar(img){
      var idli = "#li-" + img.id;
      $(idli).find("p").before(img);
  }
