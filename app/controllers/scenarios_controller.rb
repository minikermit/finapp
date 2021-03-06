class ScenariosController < ApplicationController
  # GET /scenarios
  # GET /scenarios.xml
  def index
    @scenarios = Scenario.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scenarios }
    end
  end

  # GET /scenarios/1
  # GET /scenarios/1.xml
  def show
    @scenario = Scenario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scenario }
    end
  end

  # GET /scenarios/new
  # GET /scenarios/new.xml
  def new
    @scenario = Scenario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scenario }
    end
  end

  # GET /scenarios/1/edit
  def edit
    @scenario = Scenario.find(params[:id])
  end

  # POST /scenarios
  # POST /scenarios.xml
  def create
    @scenario = Scenario.new(params[:scenario])

    respond_to do |format|
      if @scenario.save
        flash[:notice] = 'Scenario was successfully created.'
        format.html { redirect_to(@scenario) }
        format.xml  { render :xml => @scenario, :status => :created, :location => @scenario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scenario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scenarios/1
  # PUT /scenarios/1.xml
  def update
    @scenario = Scenario.find(params[:id])

    respond_to do |format|
      if @scenario.update_attributes(params[:scenario])
        flash[:notice] = 'Scenario was successfully updated.'
        format.html { redirect_to(@scenario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scenario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scenarios/1
  # DELETE /scenarios/1.xml
  def destroy
    @scenario = Scenario.find(params[:id])
    @scenario.destroy

    respond_to do |format|
      format.html { redirect_to(scenarios_url) }
      format.xml  { head :ok }
    end
  end

  # DUPLICATE /scenarios/1

  def duplicate
   scenario_to_dup = Scenario.find(params[:id])
   new_scenario = scenario_to_dup.clone
   new_scenario.id = 32
   new_scenario.save
    
   respond_to do |format|
     # if @scenario.save
        flash[:notice] = 'Scenario was duplicated.'
        format.html { redirect_to(scenarios_url) }
        format.xml  { render :xml => @scenario, :status => :created, :location => @scenario }
    end
  end

end
