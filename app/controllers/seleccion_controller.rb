class SeleccionController < ApplicationController
  def index
    @porra = Porra.find params[:idporra]
    @equipos = @porra.equipos

    @e_equipos = EleccionEquipo.new
  end

  def show

  end

  def new
    @porra = Porra.find params[:idporra]
    @equipos = @porra.equipos.group_by(&:tipo).sort

    @e_equipos = EleccionEquipo.new
  end

  def create

    ## TODO: comprobar:
    # los id de equipo son de la porra
    # se pueden hacer selecciones (fecha de la porra)
    # el usuario esta inscrito a la porra
    # si falla algo: flash[:error] = "el error que sea..."
    # si es correcto: recorrer array de seleccion

    code_porra = params[:code]
    arr_seleccion = params[:seleccion]
    arr_equipos = Array.new
    arr_seleccion.each_with_index do |id_eq, index|
      eleccion = EleccionEquipo.new
      eleccion.usuario = current_usuario
      eleccion.equipo_id = id_eq
      eleccion.orden = index
      arr_equipos << eleccion
    end

    # recorrer el array
    # comprueba que cumple condiciones valor, numero equipos, limitaciones grupo
    # si falla algo: flash[:error] = "el error que sea..."
    # si es correcto: se recorre otra vez y se guarda, y flash[:notice] = "Seleccion correcta"



    respond_to do |format|
      format.js
    end
  end
end
