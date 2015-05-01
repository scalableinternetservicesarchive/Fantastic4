class ChangePostVoteDefault < ActiveRecord::Migration
  def change
    change_column :posts, :vote_count, :integer, default: 0
  end
end
