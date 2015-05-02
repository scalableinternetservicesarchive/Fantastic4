class Post < ActiveRecord::Base
    belongs_to :event
    has_many :user_posts
    has_many :users, through: :user_posts
    validates :event, :text_content, presence: true
end
