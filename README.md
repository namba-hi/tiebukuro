# README

# Our wisdom bag
日常の知恵をブログのような形式で投稿して、皆で共有するアプリ。

# 概要
このアプリでできること

# 制作背景
日常の役立つ知識を共有して、日常版Qiitaのよう生活の役に立つようなサイトを制作したかった。着想はおばあちゃんの知恵袋から得ている。しかし、Webではおばあちゃんだけをターゲットにはできないので皆の知恵袋を共有するサイトを制作。

# 実装機能
- `ログイン機能`
- `記事投稿機能`
- `記事編集機能`
- `記事削除`
- `コメント機能`
- `記事検索機能`
- `タグ別記事表示`
- `コメント機能`
- `いいね機能`

# DEMO
- トップ画面

<img width="1792" alt="スクリーンショット 2020-03-15 23 43 53" src="https://user-images.githubusercontent.com/59820860/76703728-f5dc0500-6716-11ea-934f-652cadc582b3.png">


- 機能を利用するにはまずは新規登録します。

<img width="1792" alt="スクリーンショット 2020-03-15 23 48 06" src="https://user-images.githubusercontent.com/59820860/76703789-a518dc00-6717-11ea-81d4-02709f8a783c.png">


- 登録した後に、トップページの右上で記事投稿画面に遷移。その後、一番上にタイトル二段目で記事のタグをセレクトボックスで選び、三段目に本文を書いて、送信ボタンを押して投稿します。

<img width="1792" alt="スクリーンショット 2020-03-16 0 44 39" src="https://user-images.githubusercontent.com/59820860/76705009-21afb880-6720-11ea-98ee-39f6bf0b7491.png">


- 記事閲覧画面。投稿した本人なら編集と削除が可能。右上のいいねボタンを押すと、非同期でいいねが追加されます。もう一度押すといいねを取り消せます。

<img width="1792" alt="スクリーンショット 2020-03-16 0 44 56" src="https://user-images.githubusercontent.com/59820860/76704982-f75dfb00-671f-11ea-8d9e-ddb49b85d220.png">


- 記事閲覧画面の下には記事に対するコメントが書き込めます。名前の部分をクリックするとその人が投稿した記事を閲覧することが可能です。

<img width="1792" alt="スクリーンショット 2020-03-16 0 45 55" src="https://user-images.githubusercontent.com/59820860/76704960-d695a580-671f-11ea-9fad-86117af49bef.png">



- 名前をクリックしたときの画面。

<img width="1792" alt="スクリーンショット 2020-03-16 0 46 00" src="https://user-images.githubusercontent.com/59820860/76704934-aea64200-671f-11ea-901f-d5a254c53f7d.png">



- 同じように右のテーマ部分をクリックするとそのテーマで分類された記事に飛ぶことができます。先ほど投稿した記事のコメント数といいね数も記事一覧で反映されるようにしています。

<img width="1792" alt="スクリーンショット 2020-03-16 0 07 45" src="https://user-images.githubusercontent.com/59820860/76704137-3f7a1f00-671a-11ea-94e0-7f059c780765.png">



- トップメニュー右上の検索フォームで記事の検索も可能です。検索する場合はタイトルの一部の文字が引っ掛かった場合でも検索することが可能です。
例：記事タイトル:testの場合、tのみで検索しても検索一覧に出てきます。

- 以上で、デモは終了となります。

# 開発環境
- `Rails`
- `Haml`
- `Sass`
- `Jquery`
- `VSCode (Visual Studio Code)`

# 構築方法
- `$ git clone https://github.com/namba-hi/tiebukuro.git`
- `$ cd tiebukuro`
- `$ bundle install`
- `$ rails db:create`
- `$ rails db:migrate`
- `$ rails s`
- `👉 http://localhost:3000`

# 工夫したところ
不特定多数の人が生活の知識を投稿するため、信頼できる情報かどうか判断するための指標として、いいね機能やコメント機能を実装した。

# 今後実装したい機能
ユーザーが記事を探しやすいようにするために、qiitaのように記事をお気に入りしてマイページでお気に入りしたものを振り返れるような機能を付けたい。記事のランキング機能などもつけてより信頼性のある人気記事を表示するような機能をつけていきたいと思う。また、今回のアプリではタグをこちらで用意したものを選んでもらう方式のため、次回のアプリでタグ機能をつける場合はユーザーがタグをつけられるようにしたい。また、今回はテキストを重視するアプリだったため、華やかさを持たせるためにも写真も一緒に投稿するように改良できたらしていきたいと思う。


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
- has_many :likes, dependent: :destroy
- has_many :liked_posts, through: :likes, source: :post

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
- has_many :likes
- has_many :liked_users, through: :likes, source: :user

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
- has_many :posts, through: :tags_posts

# likesテーブル

|Column|Type|Option|
|------|----|------|
|post_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :post
- belongs_to :user