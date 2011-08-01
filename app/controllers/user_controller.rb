class UserController < ApplicationController
  def show
    @usuario = Usuario.find(params[:id])
  end

  def index
    @usuarios = Usuario.all
  end

  def cerrar
     @usuario = Usuario.find_by_id(:id)
     @usuario.update_attribute("current_sign_in_ip", '')
  end
end
