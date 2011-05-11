class NoticiaController < ApplicationController
  # GET /noticia
  # GET /noticia.xml
  def index
    @noticia = Noticium.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @noticia }
    end
  end

  # GET /noticia/1
  # GET /noticia/1.xml
  def show
    @noticium = Noticium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @noticium }
    end
  end

  # GET /noticia/new
  # GET /noticia/new.xml
  def new
    @noticium = Noticium.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @noticium }
    end
  end

  # GET /noticia/1/edit
  def edit
    @noticium = Noticium.find(params[:id])
  end

  # POST /noticia
  # POST /noticia.xml
  def create
    @noticium = Noticium.new(params[:noticium])

    respond_to do |format|
      if @noticium.save
        format.html { redirect_to(@noticium, :notice => 'Noticium was successfully created.') }
        format.xml  { render :xml => @noticium, :status => :created, :location => @noticium }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @noticium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /noticia/1
  # PUT /noticia/1.xml
  def update
    @noticium = Noticium.find(params[:id])

    respond_to do |format|
      if @noticium.update_attributes(params[:noticium])
        format.html { redirect_to(@noticium, :notice => 'Noticium was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @noticium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /noticia/1
  # DELETE /noticia/1.xml
  def destroy
    @noticium = Noticium.find(params[:id])
    @noticium.destroy

    respond_to do |format|
      format.html { redirect_to(noticia_url) }
      format.xml  { head :ok }
    end
  end
end
