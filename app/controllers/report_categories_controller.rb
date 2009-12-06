class ReportCategoriesController < ApplicationController
  
  #before_filter :login_required
  
  # GET /report_categories
  # GET /report_categories.xml  
  def index
    
      if params[:report_category_id].nil?
     @report_categories = ReportCategory.find(:all,:order => "position ASC")
    else
      @report_categories = ReportCategory.find(:all,
                            :conditions => ["Fimis_Identifier = ?", params[:Fimis_Identifier]],
                            :order => "position ASC")
      params[:Fimis_Identifier] = nil
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_categories }
    end
  end

  def search
    @report_categories = ReportCategory.search(params[:q])
  end
  
  def sort
  	params[:report_categories].each_with_index do |id, index|
  		ReportCategory.update_all(['position=?', index+1],['id=?', id])
  	end
  	render :nothing => true
  end
  
  
  # GET /report_categories/1
  # GET /report_categories/1.xml
  def show
    @report_category = ReportCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_category }
    end
  end
  
    # GET /report_categories/1
  # GET /report_categories/1.xml
  
  def show2
    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_category }
    end
  end

  # GET /report_categories/new
  # GET /report_categories/new.xml
  def new
  	@report_category = ReportCategory.new(:Record_Creation_Date => Date.today)
    #@report_category = ReportCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_category }
    end
  end

  # GET /report_categories/1/edit
  def edit
    @report_category = ReportCategory.find(params[:id])
  end

  # POST /report_categories
  # POST /report_categories.xml
  def create
    @report_category = ReportCategory.new(params[:report_category])

    respond_to do |format|
      if @report_category.save
        flash[:notice] = 'ReportCategory was successfully created.'
        format.html { redirect_to(@report_category) }
        format.xml  { render :xml => @report_category, :status => :created, :location => @report_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_categories/1
  # PUT /report_categories/1.xml
  def update
    @report_category = ReportCategory.find(params[:id])

    respond_to do |format|
      if @report_category.update_attributes(params[:report_category])
        flash[:notice] = 'ReportCategory was successfully updated.'
        format.html { redirect_to(@report_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_categories/1
  # DELETE /report_categories/1.xml
  def destroy
    @report_category = ReportCategory.find(params[:id])
    @report_category.destroy

    respond_to do |format|
      format.html { redirect_to(report_categories_url) }
      format.xml  { head :ok }
    end
  end
end
