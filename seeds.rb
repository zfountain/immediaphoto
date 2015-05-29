require_relative './user'
require_relative './image'

### Add three users to our database

zach = User.new({
	:user_name => "zfountain",
	:email => "zachfountain@email.com",
	:password => "password"
	})
zach.hash_password
zach.save
alejandra = User.new({
	:user_name => "alechapa",
	:email => "alejandrachapa@email.com",
	:password => "password"
	})
alejandra.hash_password
alejandra.save
james = User.new({
	:user_name => "james527",
	:email => "jamesrutledge@email.com",
	:password => "password"
	})
james.hash_password
james.save

### Add a bunch of images to our database

# Zach's images

world_heart = Image.new({
	:title => "World + Heart",
	:url => "http://ahhh-design.com/wp-content/uploads/2013/10/1.jpg",
	:user_id => 1
	})
world_heart.save

minute_to_think = Image.new({
	:title => "I just need a minute to think",
	:url => "http://ahhh-design.com/wp-content/uploads/2013/10/6.jpg",
	:user_id => 1
	})
minute_to_think.save

stream_line = Image.new({
	:title => "Stream Line",
	:url => "http://ahhh-design.com/wp-content/uploads/2013/10/8.jpg",
	:user_id => 1
	})
stream_line.save

# # Alejandra's images
table_one = Image.new({
	:title => "Table One",
	:url => "http://41.media.tumblr.com/6c9d779210dcb44277458fa4472857e8/tumblr_ncswgehgCj1siqduyo1_1280.jpg",
	:user_id => 2
	})
table_one.save
table_two = Image.new({
	:title => "Table Two",
	:url => "http://41.media.tumblr.com/d1713d2f120e79365f3917b25b17b159/tumblr_ncon8lQeJe1tx3hn7o1_1280.jpg",
	:user_id => 2
	})
table_two.save
sandwiches = Image.new({
	:title => "Sandwiches",
	:url => "http://40.media.tumblr.com/ba4f8839035a4bf967537d0b6cb02563/tumblr_nntroqx87v1rrqsx6o1_500.jpg",
	:user_id => 2
	})
sandwiches.save
coffee = Image.new({
	:title => "Coffee",
	:url => "http://40.media.tumblr.com/1b85d95971d21fe636827a17b1bb80cc/tumblr_n4y9v3C2Wy1rszxqgo1_r2_1280.jpg",
	:user_id => 2
	})
coffee.save
dogs = Image.new({
	:title => "Dogs",
	:url => "https://41.media.tumblr.com/81e405c78f75b33eec2db3973623d546/tumblr_nm7900nqpO1slh9ico1_540.jpg",
	:user_id => 2
	})
dogs.save
art = Image.new({
	:title => "Art",
	:url => "https://40.media.tumblr.com/cc59ba471ceebae6a5522a364d07c780/tumblr_mfrfrlQJcY1rv2dfko1_540.jpg",
	:user_id => 2
	})
art.save
flowers = Image.new({
	:title => "Flowers",
	:url => "https://41.media.tumblr.com/af1bd47a7b6d250cd0a33d4427bccdf2/tumblr_noiomiOLIb1shcqiqo1_540.jpg",
	:user_id => 2
	})
flowers.save
love = Image.new({
	:title => "Love",
	:url => "https://41.media.tumblr.com/7847f0c7ed71b2248f48804589a2912d/tumblr_nn8kweR9041shcqiqo1_540.jpg",
	:user_id => 2
	})
love.save
donuts = Image.new({
	:title => "Donuts",
	:url => "http://41.media.tumblr.com/cec24ef26fbf180974d5ec149caed3da/tumblr_nm13qhnCEX1u0jcyfo1_540.jpg",
	:user_id => 2
	})
donuts.save

# James' images

sea_of_galilee = Image.new({
	:title => "Storm on the Sea of Galilee",
	:url => "http://i.imgur.com/FRrLOy1.jpg",
	:user_id => 3
	})
sea_of_galilee.save
witches_in_air = Image.new({
	:title => "Witches in the Air",
	:url => "http://i.imgur.com/b67JekQ.jpg",
	:user_id => 3
	})
witches_in_air.save
man_brave = Image.new({
	:title => "Man Should Be Brave",
	:url => "http://i.imgur.com/OxHgfHt.jpg",
	:user_id => 3
	})
man_brave.save