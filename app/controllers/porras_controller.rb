class PorrasController < ApplicationController
  # GET /porras
  # GET /porras.xml
  def index
    @porras = Porra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @porras }
    end
  end

  # GET /porras/1
  # GET /porras/1.xml
  def show
    @porra = Porra.find(params[:id])

    @num_select = EleccionEquipo.where(:equipo_id => @porra.equipos, :usuario_id => current_usuario).count

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @porra }
    end
  end

  # GET /porras/new
  # GET /porras/new.xml
  def new
    @porra = Porra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @porra }
    end
  end

  # GET /porras/1/edit
  def edit
    @porra = Porra.find(params[:id])
  end

  # POST /porras
  # POST /porras.xml
  def create
    @porra = Porra.new(params[:porra])

    respond_to do |format|
      if @porra.save
        format.html { redirect_to(@porra, :notice => 'Porra was successfully created.') }
        format.xml  { render :xml => @porra, :status => :created, :location => @porra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @porra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /porras/1
  # PUT /porras/1.xml
  def update
    @porra = Porra.find(params[:id])

    respond_to do |format|
      if @porra.update_attributes(params[:porra])
        format.html { redirect_to(@porra, :notice => 'Porra was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @porra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /porras/1
  # DELETE /porras/1.xml
  def destroy
    @porra = Porra.find(params[:id])
    @porra.destroy

    respond_to do |format|
      format.html { redirect_to(porras_url) }
      format.xml  { head :ok }
    end
  end
end
