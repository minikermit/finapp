class StructuresController < ApplicationController
  # GET /structures
  # GET /structures.xml
  def index
    @structures = Structure.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @structures }
    end
  end

  # GET /structures/1
  # GET /structures/1.xml
  def show
    @structure = Structure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @structure }
    end
  end

  # GET /structures/new
  # GET /structures/new.xml
  def new
    @structure = Structure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @structure }
    end
  end

  # GET /structures/1/edit
  def edit
    @structure = Structure.find(params[:id])
  end

  # POST /structures
  # POST /structures.xml
  def create
    @structure = Structure.new(params[:structure])

    respond_to do |format|
      if @structure.save
        flash[:notice] = 'Structure was successfully created.'
        format.html { redirect_to(@structure) }
        format.xml  { render :xml => @structure, :status => :created, :location => @structure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @structure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /structures/1
  # PUT /structures/1.xml
  def update
    @structure = Structure.find(params[:id])

    respond_to do |format|
      if @structure.update_attributes(params[:structure])
        flash[:notice] = 'Structure was successfully updated.'
        format.html { redirect_to(@structure) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @structure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /structures/1
  # DELETE /structures/1.xml
  def destroy
    @structure = Structure.find(params[:id])
    @structure.destroy

    respond_to do |format|
      format.html { redirect_to(structures_url) }
      format.xml  { head :ok }
    end
  end
end
