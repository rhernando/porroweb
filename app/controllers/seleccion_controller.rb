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
end
