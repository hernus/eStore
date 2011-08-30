class User < ActiveRecord::Base
  require 'digest/sha1'	


  def self.hash(password="")
  	Digest::SHA1.hexdigest(password)
  end	
	
end
