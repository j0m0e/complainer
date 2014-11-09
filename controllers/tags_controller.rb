# ===============
#      TAGS
# ===============

# INDEX

get '/tags' do
	@tags = Tag.all
	erb :'/tags/index'
end

# CREATE
get '/tags/new' do
	erb :'tags/new'
end

# SHOW

get '/tags/:id' do
	#@tags = Tag.find(params[:id])
	erb :'tags/show'
end

post '/tags' do
	new_tag = Tag.new(params[:tag])
	tag = Tag.find(params[:id])
	if new_tag.save
		redirect "/tags"
	else
		redirect "/tags/new"
	end

end


