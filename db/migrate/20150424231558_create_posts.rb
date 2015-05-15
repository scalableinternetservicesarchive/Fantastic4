class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :event, index: true, foreign_key: true
      t.text :text_content
      t.integer :vote_count, default: 0, null: false

      t.timestamps null: false
    end
  end
end
