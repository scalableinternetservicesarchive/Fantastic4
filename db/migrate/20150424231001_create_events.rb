class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.string :tags
      t.integer :post_count, index: true, default: 0, null: false

      t.timestamps null: false
    end
  end
end
