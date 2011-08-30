class InvoiceItem < ActiveRecord::Base
	belongs_to :invoice
	
	
  def color(clr)
  	if clr == 'bgcolor=white'
  	  clr = 'bgcolor=eeeeee'	
  	else
  	  clr = 'bgcolor=white'
  	end	  		
  	return clr
  end
  	
end
