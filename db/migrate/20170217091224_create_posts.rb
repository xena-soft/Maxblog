class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :author_id, foreign_key: true, index: true
      t.date :published_at

      t.timestamps
    end
  end
end
