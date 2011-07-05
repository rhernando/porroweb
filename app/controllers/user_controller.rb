class UserController < ApplicationController
  def show
    @usuario = Usuario.find(params[:id])
  end

  def index
    @usuarios = Usuario.all
  end
end
