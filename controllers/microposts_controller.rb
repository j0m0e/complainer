# ====================
#      MICROPOSTS
# ====================


# NEW 
get '/microposts/new' do
	@authors = Author.all
	

	erb :'microposts/new'
end

# CREATE

post '/microposts' do
	new_micropost = Micropost.new(params[:micropost])
	if new_micropost.save
		redirect "/microposts/#{new_micropost.id}"
	else
		redirect "/microposts/new"
	end
end

# SHOW

get '/microposts/:id' do
	@micropost = Micropost.find(params[:id])

	erb :'/microposts/show'
end





