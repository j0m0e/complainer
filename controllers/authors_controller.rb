# ==================
#    Authors
# =================


# INDEX
get '/authors' do
	@authors = Author.all
	erb :'/authors/index'
end

# CREATE
post '/authors' do
	new_author = Author.new(params[:author])
	if new_author.save
	#change line 18 to /author/#{author.id} 
		redirect "/authors" 
	end
end

# NEW
get '/authors/new' do
	erb :'authors/new'
end

# EDIT
# will have to add more to route later
get '/authors/:id/edit' do
	
	erb :'authors/edit'
end

# UPDATE
put '/authors/:id' do

end


# SHOW
get '/authors/:id' do
	@author = Author.find(params[:id])
	erb :'/authors/show'
end





