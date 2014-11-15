# ===============
#      TAGS
# ===============

# INDEX
get '/tags' do
	@tags = Tag.all
	erb :'/tags/index'
end

# NEW
get '/tags/new' do
	erb :'tags/new'
end

# SHOW
get '/tags/:id' do
	@tag = Tag.find(params[:id])
	erb :'tags/show'
end

# CREATE
post '/tags' do
	new_tag = Tag.new(params[:tag])
	if new_tag.save
		redirect "/tags"
	else
		redirect "/tags/new"
	end
end


