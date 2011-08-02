  $(document).ready(function() {
    $('.equipo').click(clickEquipo);

    $('#validar').click(function(){

        var imgs = $("#seleccion #divequipos").find("img");
        if (imgs.length != <%= @porra.num_equipos %>){
            alert("Debes seleccionar <%= @porra.num_equipos %> equipos");
            return false;
        }

        var suma_puntos = 0;
        for (var i = 0; i < imgs.length;i++){
            suma_puntos += parseInt(imgs[i].id.substring(imgs[i].id.lastIndexOf("-")+1));
        }
        if (suma_puntos > <%= @porra.max_val_equipos %>){
            alert("La suma del valor de los equipos no pueden superar los <%= @porra.max_val_equipos %> puntos");
            return false;
        }


        $.post({
          url: '/seleccion/create'
        });
        return false;
    });
  });

  function restaurar(img){
    var idli = "#li-" + img.id.substring(0,img.id.indexOf("-"));

    var equipos = $("#eqs").text();
    $("#eqs").text(parseInt(equipos) - 1);

    var puntos = $("#pts").text();
    var restar = parseInt(img.id.substring(img.id.lastIndexOf("-")+1));
    $("#pts").text(parseInt(puntos) - restar);

    $(idli).append(img);
  }

  function clickEquipo(){
    var imagen = $(this).find('img');
    imagen.click(function(){
        restaurar(this);
    });

    var equipos = $("#eqs").text();
    $("#eqs").text(parseInt(equipos) + 1);

    var puntos = $("#pts").text();
    var sumar = parseInt($(imagen).attr('id').substring($(imagen).attr('id').lastIndexOf("-")+1));
    $("#pts").text(parseInt(puntos) + sumar);

    $('#seleccion #divequipos').append(imagen);
  }