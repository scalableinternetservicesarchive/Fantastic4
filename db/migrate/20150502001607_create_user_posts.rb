class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.timestamps null: false
    end
  end
end
