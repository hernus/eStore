class StoresController < ApplicationController
  
  def list
  	@stores = Store.all
  end
  
  def show
  	@store = Store.find(params[:id])
  end
  
  def edit
  	@store = Store.find(params[:id])  	
  end

  def update
  	@store = Store.find(params[:id])
  	@store.update_attributes(params[:store])
  	@store.save
  	render "show"
  end
  
  def new
  	@store = Store.new
  end
  
  def create
  	@store = Store.new(params[:store])	
  	@store.save
  	render("show")
  end 		
  
  def delete
    @store = Store.find(params[:id])
    @store.destroy
  	redirect_to :action => "list"	
  end
  
    	
end  
