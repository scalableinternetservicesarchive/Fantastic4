module PostsHelper
  def cache_key_for_post_table
      "post-table-#{Post.maximum(:updated_at)}"
  end
  
  def cache_key_for_post_row(post)
     "post-#{post.id}-#{post.updated_at}-#{post.vote_count}"
  end
end
