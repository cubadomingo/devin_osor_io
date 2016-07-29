class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
	belongs_to :user
	belongs_to :category
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
end
