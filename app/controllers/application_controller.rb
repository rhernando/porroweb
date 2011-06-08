class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :titulo, :google_key, :carga_porras

  def titulo
    @title = ""
  end

  def carga_porras
    @porras = Porra.all
  end

  def google_key
    google_api_key = "123456789"
  end
end
