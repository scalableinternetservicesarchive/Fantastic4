class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.string :tags

      t.timestamps null: false
    end
  end
end
