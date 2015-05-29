require 'active_record'

# Establish a database connection 
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:database => 'immediaphoto_db'
)

# User Class
class Image < ActiveRecord::Base
	
end