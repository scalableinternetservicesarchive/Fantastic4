module PostsHelper
  #why cache this table. When to update the table
  # def cache_key_for_post_table(posts)
  #   @date = []
  #   @posts.each do |post|
  #     @date.push(post.updated_at)
  #   end
  #   "post-table-#{@date.max}"
  # end
  
  def cache_key_for_post_row(post)
     "post-#{post.id}-#{post.updated_at}-#{post.vote_count}"
  end
end
