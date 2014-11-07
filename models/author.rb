class Author < ActiveRecord::Base
	has_many :microposts, dependent: :destroy #destroy microposts when author goes kaput
end
