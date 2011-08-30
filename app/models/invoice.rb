class Invoice < ActiveRecord::Base
	
	belongs_to :customer
	has_many :invoice_items
	
end
