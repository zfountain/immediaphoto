require_relative './user'

# Add a test user to our database
zach = User.new({ :user_name => "zfountain", :email => "zachfountain@email.com", :password => "password" })
zach.hash_password
zach.save
alejandra = User.new({ :user_name => "alechapa", :email => "alejandrachapa@email.com", :password => "password" })
alejandra.hash_password
alejandra.save
james = User.new({ :user_name => "james527", :email => "jamesrutledge@email.com", :password => "password" })
james.hash_password
james.save
