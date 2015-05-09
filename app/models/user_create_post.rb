class UserCreatePost < ActiveRecord::Base
  belongs_to :creater, foreign_key: 'user_id', class_name: 'User'
  belongs_to :created_post, foreign_key: 'post_id', class_name: 'Post'
end
