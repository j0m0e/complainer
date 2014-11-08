require 'active_record'

ActiveRecord::Base.establish_connection({
	database: 'complainer_db',
	adapter: 'postgresql'
})

# Models

