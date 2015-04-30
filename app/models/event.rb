class Event < ActiveRecord::Base
  TAG_TYPES = ["school life", "movies", "music", "relationship"]
  
  has_many :posts, dependent: :destroy
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
