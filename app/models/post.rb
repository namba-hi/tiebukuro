class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags_posts
  has_many :tags, through: :tags_posts

  validates :title, :content, presence: true

  #def save_blogs(tags)
    #current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    #old_tags = current_tags -tags
    #new_tags = tags - current_tags


    #old_tags.each do |old_name|
      #self.tags.delete Tag.find_by(tag_name:old_name)
    #end

    #new_tags.each do |new_name|
      #blog_tag = Tag.find_or_create_by(tag_name:new_name)
      #self.tags << blog_tag
    #end
  #end
end
