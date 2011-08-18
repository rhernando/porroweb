class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :titulo, :google_key, :carga_porras, :users_online, :ultimos_mensajes

  def titulo
    @title = ""
  end

  def carga_porras
    @porras = Porra.all
  end

  def google_key
    google_api_key = "123456789"
  end

  def users_online
    @user_online = Usuario.all(:conditions => ["last_seen > ?", 5.minutes.ago])
  end

  def ultimos_mensajes
    @ultimos_mensajes = Mensaje.order(:fecha).last(5)
  end

end
