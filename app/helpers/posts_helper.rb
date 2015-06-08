module PostsHelper
  def cache_key_for_post_table(posts,event)
    @date = []
    id = ""
    @posts.each do |post|
      @date.push(post.updated_at)
    end
    "post-table-#{@date.max}-#{@event.id}-#{current_user.nil?}"
  end
  
  def cache_key_for_post_row(post)
    puts current_user
    "post-#{post.id}-#{post.updated_at}-#{post.vote_count}-#{current_user.nil?}"
  end
end
