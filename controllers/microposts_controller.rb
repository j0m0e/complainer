# ====================
#      MICROPOSTS
# ====================


# NEW 
get '/microposts/new' do
	@authors = Author.all
	@tags = Tag.all
	erb :'microposts/new'
end

# CREATE
post '/microposts' do
	new_micropost = Micropost.new(params[:micropost])
	new_micropost.save
	tagged = Tag.find(params[:tag])
	new_micropost.tags << tagged
	redirect "/microposts/#{new_micropost.id}"
end

# SHOW
get '/microposts/:id' do
	@micropost = Micropost.find(params[:id])
	erb :'/microposts/show'
end





