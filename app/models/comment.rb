class Comment < ActiveRecord::Base
	belongs_to :post
	validates :name, presence: true, length: { maximum: 50 }
	validates :body, presence: true
  validates :post_id, presence: true
end