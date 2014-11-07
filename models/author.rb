class Author < ActiveRecord::Base
	has_many :microposts
end