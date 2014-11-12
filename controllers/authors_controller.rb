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
		redirect "/authors/#{new_author.id}" 
	end
end

# NEW
get '/authors/new' do
	erb :'authors/new'
end

# EDIT
# will have to add more to route later
get '/authors/:id/edit' do
	@author = Author.find(params[:id])
	erb :'authors/edit'
end

# UPDATE
put '/authors/:id' do
	author = Author.find(params[:id])
	if author.update(params[:author])
		redirect "/authors/#{author.id}"
	else
		redirect "/authors/#{author.id}/edit"
	end
end


# SHOW
get '/authors/:id' do
	@author = Author.find(params[:id])
	erb :'/authors/show'

end

# DESTROY

delete '/authors/:id' do
	author = Author.find(params[:id])
	if author.destroy
		redirect "/authors"
	else
		redirect "/authors/#{author.id}"
	end
end





