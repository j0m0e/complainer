require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'better_errors'

# Models


# Controllers

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

ActiveRecord::Base.establish_connection({
		adapter: 'postgresql',
		database: 'microblog_db',
		host: 'localhost'
	})

after { ActiveRecord::Base.connection.close }