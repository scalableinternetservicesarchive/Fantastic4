class User < ActiveRecord::Base
    has_many :user_vote_posts
    has_many :voted_posts, through: :user_vote_posts, source: :voted_post
    has_many :user_organize_events
    has_many :organized_events, through: :user_organize_events, source: :organized_event
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
