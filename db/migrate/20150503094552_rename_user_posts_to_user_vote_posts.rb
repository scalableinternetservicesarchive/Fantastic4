class RenameUserPostsToUserVotePosts < ActiveRecord::Migration
  def change
    rename_table :user_posts, :user_vote_posts
  end
end
