class ChangeColumnNullDefault < ActiveRecord::Migration
  def change
    change_column_null :events, :title, false
    change_column_null :posts, :vote_count, false
    change_column_default :posts, :vote_count, 0
    change_column_null :user_posts, :user_id, false
    change_column_null :user_posts, :post_id, false
  end
end
