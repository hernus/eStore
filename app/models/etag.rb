class Etag
	attr_accessor :col
	
	def color
	  if @col == 'bgcolor=white'
	  	@col = 'bgcolor=f4f4f4'
	  else
	  	@col = 'bgcolor=white'
	  end
	  return @col		
	end	
end