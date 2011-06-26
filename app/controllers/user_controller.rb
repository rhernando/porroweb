class UserController < ApplicationController
  def show

  end

  def index
    @usuarios = Usuario.all
  end
end
