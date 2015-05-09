class Event < ActiveRecord::Base
  TAG_TYPES = ["School", "Movie", "Music", "Reading", "Health"]
  
  has_many :posts, dependent: :destroy
  has_many :user_organize_events
  has_many :organizers, through: :user_organize_events, source: :organizer
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  
  def self.search(search)
    search_condition = "%"+search+"%"
    where("title LIKE ? OR description LIKE ?", search_condition, search_condition)
  end
end


