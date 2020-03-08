# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

<<<<<<< Updated upstream
* ...
a
=======
### Association
- has_many :posts
- has_many :comments

## postsテーブル

|Column|Type|Option|
|------|----|------|
|title|text|null :false|
|content|text|null: false|
|user_id|references|null: false, foreingn_key: true|

### Association
- belongs_to :user
- has_many: comments, dependent: :destroy
- has_many: posts_tags
- has_many:tags, through: :posts_tags
- has_many :tags_posts
- has_many :tags, through: :tags_posts, dependent: :destroy

## commentsテーブル

|Column|Type|Option|
|------|----|------|
|text|text|
|user_id|integer|
|post_id|integer|

### Association
- belongs_to :post
- belongs_to :user

## tags_postsテーブル

|Column|Type|Option|
|------|----|------|
|tag_id|references|foreign key: true|
|post_id|references|foreign key: true|

### Association
- belongs_to :tag
- belongs_to :post

## tagsテーブル

|Column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :tags_posts, dependent: :destroy
- has_many :posts, through: :tags_posts
>>>>>>> Stashed changes
