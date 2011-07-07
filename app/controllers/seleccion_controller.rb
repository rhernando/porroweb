class SeleccionController < ApplicationController
  def index
    @porra = Porra.find params[:idporra]
    @equipos = @porra.equipos

    @e_equipos = EleccionEquipo.new
  end

  def show

  end
end
