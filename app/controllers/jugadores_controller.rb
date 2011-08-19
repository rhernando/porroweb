class JugadoresController < ApplicationController
  # GET /jugadores
  # GET /jugadores.xml
  def index
    @jugadores = Jugador.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jugadores }
    end
  end

  # GET /jugadores/1
  # GET /jugadores/1.xml
  def show
    @jugador = Jugador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jugador }
    end
  end

  # GET /jugadores/new
  # GET /jugadores/new.xml
  def new
    @jugador = Jugador.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jugador }
    end
  end

  # GET /jugadores/1/edit
  def edit
    @jugador = Jugador.find(params[:id])
  end

  # POST /jugadores
  # POST /jugadores.xml
  def create
    @jugador = Jugador.new(params[:jugador])

    respond_to do |format|
      if @jugador.save
        format.html { redirect_to(@jugador, :notice => 'Jugador was successfully created.') }
        format.xml  { render :xml => @jugador, :status => :created, :location => @jugador }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jugador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jugadores/1
  # PUT /jugadores/1.xml
  def update
    @jugador = Jugador.find(params[:id])

    respond_to do |format|
      if @jugador.update_attributes(params[:jugador])
        format.html { redirect_to(@jugador, :notice => 'Jugador was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jugador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jugadores/1
  # DELETE /jugadores/1.xml
  def destroy
    @jugador = Jugador.find(params[:id])
    @jugador.destroy

    respond_to do |format|
      format.html { redirect_to(jugadores_url) }
      format.xml  { head :ok }
    end
  end
end
