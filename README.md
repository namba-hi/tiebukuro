# README

# Our wisdom bag
日常の知恵をブログのような形式で投稿して、皆で共有するアプリ。

# 制作理由
日常の役立つ知識を共有して、日常版Qiitaのよう生活の役に立つようなサイトを制作したかった。着想はおばあちゃんの知恵袋から得ている。しかし、Webではおばあちゃんだけをターゲットにはできないので皆の知恵袋を共有するサイトを制作。

# 実装機能
ログイン機能
記事投稿機能
記事編集機能
記事削除
コメント機能
記事検索機能
タグ別記事表示

# 苦労したところ
初めての個人制作のため、データベース設計や何から実装していけばいいのかなどの工程が分からなかった。しかし、最初の段階でデータベース設計をよく練ることが大切だと学んだ。制作当初は手探りだったため、rails自体の仕組みも完全には把握していなかったが、一から自分で作ることによって処理の流れなどが理解できた。

# 課題
トップページなどのでデザイン面が、寂しいものになっているので次の制作からはJavascriptを使用したり、他のアプリを参考にしてフロント面に力を入れるようにしたい。
プログラミングスクールの基礎をしっかり叩き込むことがテーマの一つであったため、カリキュラムを参考にした点が多いため、次回のアプリからは応用してカリキュラムではやらなかった実装を多く実装するようにしたいと思う。

# 得たもの
今回のアプリで実装したものは、基本的なものばかりではあるが、投稿やログイン、検索機能など、他のアプリでも欠かせないものを実装できた。自分のコードや実装のノウハウを次回からも活かせるものを得られた。


# データベース

## usersテーブル

|Column|Type|Option|
|------|----|------|
|nickname|string|null: false|
|encrypted_password|string|null: false|
|email|string|null:false|

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
|tag_id|references|foreign key: true|
|post_id|references|foreign key: true|

### Association
- belongs_to :tag
- belongs_to :post

## tagsテーブル

|Column|Type|Option|
|name|string|null: false|

### Association
- has_many :tags_posts, dependent: :destroy
- has_many :posts, through: :tags_posts