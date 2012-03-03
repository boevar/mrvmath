class ListController < ApplicationController
  # GET /skeds
  # GET /skeds.xml
  def index
    @skeds = Sked.all(:order => "code")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skeds }
    end
  end

  # GET /skeds/1
  # GET /skeds/1.xml
  def show
    @sked = Sked.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sked }
    end
  end

  # GET /skeds/new
  # GET /skeds/new.xml
  def new
    @sked = Sked.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sked }
    end
  end

  # GET /skeds/1/edit
  def edit
    @sked = Sked.find(params[:id])
  end

  # POST /skeds
  # POST /skeds.xml
  def create
    @sked = Sked.new(params[:sked])

    respond_to do |format|
      if @sked.save
        format.html { redirect_to(@sked, :notice => 'Sked was successfully created.') }
        format.xml  { render :xml => @sked, :status => :created, :location => @sked }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sked.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skeds/1
  # PUT /skeds/1.xml
  def update
    @sked = Sked.find(params[:id])

    respond_to do |format|
      if @sked.update_attributes(params[:sked])
        format.html { redirect_to(@sked, :notice => 'Sked was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sked.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skeds/1
  # DELETE /skeds/1.xml
  def destroy
    @sked = Sked.find(params[:id])
    @sked.destroy

    respond_to do |format|
      format.html { redirect_to(skeds_url) }
      format.xml  { head :ok }
    end
  end
end
