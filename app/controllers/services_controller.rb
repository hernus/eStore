class ServicesController < ApplicationController
	
	def list
		@services = Service.all
	end
	
	def new
		@service = Service.new
	end
	
	def create
		@service = Service.new(params[:service])
		@service.save
		redirect_to :action => 'list'
	end
	
	def show
		@service = Service.find(params[:id])
	end
	
	def delete
		@service = Service.find(params[:id])
		@service.destroy
		redirect_to( :action => 'list' )				
	end
	
	def edit
	  @service = Service.find(params[:id])
	end
		
	def update
	  @service = Service.find(params[:id])
	  @service.update_attributes(params[:service])
	  @service.save
	  redirect_to( :action => 'list' )	
	end
	
end
