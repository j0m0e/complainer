# ====================
#      MICROPOSTS
# ====================


# NEW 
get '/microposts/new' do
	
	erb :'microposts/new'
end

# SHOW

get '/microposts/:id' do
	# @micropost = Micropost.find(params[:id])
	erb :'/microposts/show'
end