class CustomersController < ApplicationController
  
  def list
    @customers = Customer.all	
  end
  
  def new
  	@customer = Customer.new
  end
  
  def create
  	@customer = Customer.new(params[:customer])
  	@customer.save
  	redirect_to :action => 'list'
  end
  
  def edit
  	@customer = Customer.find(params[:id])
  end
  def update
  	@customer = Customer.find(params[:id])
  	@customer.update_attributes(params[:customer])
  	@customer.save
  	redirect_to( :action => 'list' )
  end	
  
  def delete
  	@customer = Customer.find(params[:id])
  	@customer.destroy
  	redirect_to(:action => 'list')
  end
  
  def show
  	@customer = Customer.find(params[:id])
  end	

end
