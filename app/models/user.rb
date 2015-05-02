class User < ActiveRecord::Base
    has_many :user_posts
    has_many :posts, through: :user_posts
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
