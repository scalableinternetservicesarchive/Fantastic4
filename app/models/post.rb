class Post < ActiveRecord::Base
    belongs_to :event
    has_many :user_vote_posts
    has_many :voters, through: :user_vote_posts, source: :voter
    has_many :user_create_posts
    has_many :creaters, through: :user_create_posts, source: :creater
    
    validates :event, :text_content, presence: true
end
