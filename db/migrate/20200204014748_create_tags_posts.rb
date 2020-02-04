class CreateTagsPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_posts do |t|
      t.references :tag, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
