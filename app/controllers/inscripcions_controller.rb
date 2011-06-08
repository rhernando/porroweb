class InscripcionsController < ApplicationController
  # GET /inscripcions
  # GET /inscripcions.xml
  def index
    @inscripcions = Inscripcion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inscripcions }
    end
  end

  # GET /inscripcions/1
  # GET /inscripcions/1.xml
  def show
    @inscripcion = Inscripcion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inscripcion }
    end
  end

  # GET /inscripcions/new
  # GET /inscripcions/new.xml
  def new
    @inscripcion = Inscripcion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inscripcion }
    end
  end

  # GET /inscripcions/1/edit
  def edit
    @inscripcion = Inscripcion.find(params[:id])
  end

  # POST /inscripcions
  # POST /inscripcions.xml
  def create
    @inscripcion = Inscripcion.new(params[:inscripcion])

    respond_to do |format|
      if @inscripcion.save
        format.html { redirect_to(@inscripcion, :notice => 'Inscripcion was successfully created.') }
        format.xml  { render :xml => @inscripcion, :status => :created, :location => @inscripcion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inscripcion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inscripcions/1
  # PUT /inscripcions/1.xml
  def update
    @inscripcion = Inscripcion.find(params[:id])

    respond_to do |format|
      if @inscripcion.update_attributes(params[:inscripcion])
        format.html { redirect_to(@inscripcion, :notice => 'Inscripcion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inscripcion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inscripcions/1
  # DELETE /inscripcions/1.xml
  def destroy
    @inscripcion = Inscripcion.find(params[:id])
    @inscripcion.destroy

    respond_to do |format|
      format.html { redirect_to(inscripcions_url) }
      format.xml  { head :ok }
    end
  end
end
