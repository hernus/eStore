class EmployeesController < ApplicationController
	
	def new
	  @employee = Employee.new	
    end
    
    def create
      @employee = Employee.new(params[:employee])
      if @employee.save
        redirect_to(:action => 'list')
      else
      	render(:text => 'Error, could not save')
      end			
    end
    
    def list
      @employees = Employee.all
    end	
    
    def show
      @employee = Employee.find(params[:id])
    end

    def edit
      @employee = Employee.find(params[:id])
    end
    def update
      @employee = Employee.find(params[:id])
      @employee.update_attributes(params[:employee])
      @employee.save
      redirect_to(:action => 'list')	
    end
    def delete
      @employee = Employee.find(params[:id])
      @employee.destroy
      redirect_to(:action => 'list')	
    end	

end
