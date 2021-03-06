class Post < ApplicationRecord
  belongs_to :user
  has_many :tags_posts
  has_many :tags, through: :tags_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  validates :title, :content, presence: true

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "#{search}%")
  end


  def liked_by?(user_id)
    likes.find_by(user_id: user_id)
  end
end
