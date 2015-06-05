class CreateUserVotePosts < ActiveRecord::Migration
  def change
    create_table :user_vote_posts do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :post, index: true, null: false
      
      t.timestamps null: false
    end
  end
end
