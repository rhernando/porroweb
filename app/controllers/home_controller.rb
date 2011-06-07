class HomeController < ApplicationController
  before_filter :carga_noticias

  def carga_noticias
    #@noticia = Noticium.all

    @noticia = Noticium.paginate(:page => params[:page])

  end

  def index
  end
end
