class Event < ActiveRecord::Base
  TAG_TYPES = ["School", "Movie", "Music", "Technology","Reading", "Health"]
  
  has_many :posts, dependent: :destroy
  has_many :user_organize_events
  has_many :organizers, through: :user_organize_events, source: :organizer
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  
  has_attached_file :image, styles: {
    thumb: '100x100#',
    square: '200x200#',
    medium: '300x300#'
  }
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def self.search(search)
    search_condition = "%"+search+"%"
    where("title LIKE ? OR description LIKE ? OR tags LIKE ?", search_condition, search_condition, search_condition)
  end
  
  def self.timeline(month)
    time_interval = DateTime.now - month.to_i.month
    start_time = time_interval.at_end_of_month.midnight
    where(created_at: start_time..DateTime.now)
  end
end


