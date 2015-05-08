class Event < ActiveRecord::Base
  TAG_TYPES = ["school life", "movies", "music", "relationship"]
  
  has_many :posts, dependent: :destroy
  has_many :user_organize_events
  has_many :organizers, through: :user_organize_events, source: :organizer
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end

