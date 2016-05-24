class Post < ActiveRecord::Base
	belongs_to :users
	belongs_to :category
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
end
