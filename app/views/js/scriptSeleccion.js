  $(document).ready(function() {
    $('.equipo').click(clickEquipo);
    $('.jugador-select').click(compruebaNumJug);

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

        var dataArray = new Array();
        for (var i = 0; i < imgs.length;i++){
            dataArray.push(imgs[i].id.substring(0,imgs[i].id.indexOf("-")));
        }
        $.post(
            "<%= crea_seleccion_path %>",
            { 'seleccion[]': dataArray,
               'porra': '<%= @porra.code %>'}
        );
        return false;
    });

    <% @actual.each do |sel| %>
        anadir(<%= sel.equipo_id %>);
    <% end %>

  });

  function compruebaNumJug(){
    if ($("input[@name='"+ this.id + "[]']:checked").length > 2){
        alert("El máximo es de dos jugadores por equipo");
        return false;
    }

  }

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

  function anadir(idequipo){
    var lid = "#li-" + idequipo;
    $(lid).click();
  }