class ReportStructuresController < ApplicationController

  # before_filter :login_required

  # GET /report_structures
  # GET /report_structures.xml
  def index
   
    if params[:report_line_id].nil?
      @report_structures = ReportStructure.find(:all)
    else
      @report_structures = ReportStructure.find(:all,
                            :conditions => ["report_line_id = ?", params[:report_line_id]])
      params[:report_line_id] = nil   
      
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_structures }
    end
  end

  # GET /report_structures/1
  # GET /report_structures/1.xml
  def show
    @report_structure = ReportStructure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_structure }
    end
  end
  
  # GET /report_structures/new
  # GET /report_structures/new.xml
  def new
    @report_structure = ReportStructure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_structure }
    end
  end

  # GET /report_structures/1/edit
  def edit
    @report_structure = ReportStructure.find(params[:id])
    @report_line = ReportLine.find(:all)
  end

  # POST /report_structures
  # POST /report_structures.xml
  def create
    @report_structure = ReportStructure.new(params[:report_structure])

    respond_to do |format|
      if @report_structure.save
        flash[:notice] = 'ReportStructure was successfully created.'
        format.html { redirect_to(@report_structure) }
        format.xml  { render :xml => @report_structure, :status => :created, :location => @report_structure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_structure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_structures/1
  # PUT /report_structures/1.xml
  def update
    @report_structure = ReportStructure.find(params[:id])

    respond_to do |format|
      if @report_structure.update_attributes(params[:report_structure])
        flash[:notice] = 'ReportStructure was successfully updated.'
        format.html { redirect_to(@report_structure) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_structure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_structures/1
  # DELETE /report_structures/1.xml
  def destroy
    @report_structure = ReportStructure.find(params[:id])
    @report_structure.destroy

    respond_to do |format|
      format.html { redirect_to(report_structures_url) }
      format.xml  { head :ok }
    end
  end
end
