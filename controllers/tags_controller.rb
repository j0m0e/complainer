# ===============
#      TAGS
# ===============

# INDEX

get '/tags' do
	erb :'/tags/index'
end

# SHOW

get '/tags/:id' do
	#@tags = Tag.find(params[:id])
	erb :'tags/show'
end


