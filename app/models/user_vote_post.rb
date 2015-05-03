class UserVotePost < ActiveRecord::Base
    belongs_to :voter, foreign_key: 'user_id', class_name: 'User'
    belongs_to :voted_post, foreign_key: 'post_id', class_name: 'Post'
end
