class User < ActiveRecord::Base
    has_many :user_vote_posts
    has_many :voted_posts, through: :user_vote_posts, source: :voted_post
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
