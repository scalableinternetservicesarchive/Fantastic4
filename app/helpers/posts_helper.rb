module PostsHelper
  def cache_key_for_post_table(posts,event)
    @date = []
    id = ""
    @posts.each do |post|
      @date.push(post.updated_at)
    end
    "post-table-#{@date.max}-#{@event.id}"
  end
  
  def cache_key_for_post_row(post)
     "post-#{post.id}-#{post.updated_at}-#{post.vote_count}"
  end
end
