class Category < ActiveRecord::Base
	belongs_to :users
	has_many :posts, dependent: :destroy
end
