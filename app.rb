require 'sinatra'
require 'sinatra/reloader'

# Include the user model 
require_relative './user'
require_relative './image'

# Sessions are turned off by default, so enable it here
# We use sessions in our app to keep track of authenticated users. If we didn't 
# use sessions, the same user would have to log back in with every request to 
# a new page
enable :sessions

# Filter that runs before all routes are processed
# This is run first, then the code within the routes below
before do 
	# If they have a session id, we know it's someone who has successfully authenticated
	if session[:user_id] != nil
		# If there's a user with an active session, go ahead and get the data for the user
		@current_user = User.find(session[:user_id])
	else 
		# We don't know who this is yet
		@current_user = nil
	end
end 

# Homepage route
get '/' do
	# If @current_user is not set, that means they are not allowed to access this resource
	if @current_user != nil
		erb :index
	else 
		# Lead them to the login page
		redirect('/login')
	end
end

# Display login form
get '/login' do 
	erb :login
end

# Check if login form contents posted is valid
post '/login' do 
	# Get form params
	user_name = params['user_name']
	password = params['password']

	# Get an instance of the user with this username 
	user = User.find_by(:user_name => user_name)

	# If a user by this user_name was found and we can authenticate them
	if user && user.authenticate(password)
		# This is a valid user in our database
		# Keep track of the user by setting a session variable called 'user_id'
		session[:user_id] = user.id
		redirect('/')
	else 
		# Not a valid user
		redirect('/login')
	end
end 

# Display registration form
get '/register' do
	erb :register
end

# Process registration data and add the new user
post '/register' do 
	# Create an instance of a user with the new data posted
	user = User.new(:user_name => params[:user_name], :email => params[:email], :password => params[:password])
	user.hash_password
	user.save

	# We need to set a session variable or they will have to log in when going to the index page, which 
	# looks like a bug
	session[:user_id] = user.id

	# For our purposes, they are now authorized to see our protected content
	redirect('/')
end

# Diplay the image upload form 
get '/upload' do
	erb :upload
end

# Process image upload data and add it to the database
post '/upload' do
	image = Image.new(:title => params[:title], :url => params[:url], :user_id => user.id)
	image.save
end

# Display the current user 
get '/user' do 
	erb :user
end

# Display the current user's uploaded images
get '/user/*' do

end

# Log the user out
get '/logout' do
	# Clear out all the session variables. Now that the session value no longer exists, they will have to log in again
	session.clear
	redirect('/login')
end