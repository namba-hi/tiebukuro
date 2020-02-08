class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags_posts
  has_many :tags, through: :tags_posts, dependent: :destroy

  validates :title, :content, presence: true

end
