class SeleccionController < ApplicationController
  def index
    @porra = Porra.find params[:idporra]
    @equipos = @porra.equipos
  end
end
