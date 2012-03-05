class ListController < ApplicationController
 
  #def index
  #  @list = Sked.search(params[:search])
  #end
 
  def index
  
    @list = Sked.search(params[:search])
    @lists = Sked.all(:order => "code")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @list }
    end
  end

  def show
    @lists = list.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @list }
    end
 end

end
