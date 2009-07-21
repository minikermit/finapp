class ClosingRatesController < ApplicationController
  # GET /closing_rates
  # GET /closing_rates.xml
  def index
    @closing_rates = ClosingRate.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @closing_rates }
    end
  end

  # GET /closing_rates/1
  # GET /closing_rates/1.xml
  def show
    @closing_rate = ClosingRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @closing_rate }
    end
  end

  # GET /closing_rates/new
  # GET /closing_rates/new.xml
  def new
    @closing_rate = ClosingRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @closing_rate }
    end
  end

  # GET /closing_rates/1/edit
  def edit
    @closing_rate = ClosingRate.find(params[:id])
  end

  # POST /closing_rates
  # POST /closing_rates.xml
  def create
    @closing_rate = ClosingRate.new(params[:closing_rate])

    respond_to do |format|
      if @closing_rate.save
        flash[:notice] = 'ClosingRate was successfully created.'
        format.html { redirect_to(@closing_rate) }
        format.xml  { render :xml => @closing_rate, :status => :created, :location => @closing_rate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @closing_rate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /closing_rates/1
  # PUT /closing_rates/1.xml
  def update
    @closing_rate = ClosingRate.find(params[:id])

    respond_to do |format|
      if @closing_rate.update_attributes(params[:closing_rate])
        flash[:notice] = 'ClosingRate was successfully updated.'
        format.html { redirect_to(@closing_rate) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @closing_rate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /closing_rates/1
  # DELETE /closing_rates/1.xml
  def destroy
    @closing_rate = ClosingRate.find(params[:id])
    @closing_rate.destroy

    respond_to do |format|
      format.html { redirect_to(closing_rates_url) }
      format.xml  { head :ok }
    end
  end
end
