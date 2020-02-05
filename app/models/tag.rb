class Tag < ApplicationRecord
  has_many :posts_tags, dependent: :destroy
  has_many :posts, through: :tags_posts, dependent: :destroy
end
