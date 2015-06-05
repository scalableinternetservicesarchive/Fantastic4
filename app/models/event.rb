class Event < ActiveRecord::Base
  TAG_TYPES = ["School", "Movie", "Music", "Technology","Reading", "Health"]
  
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :posts, dependent: :destroy
  has_many :user_organize_events
  has_many :organizers, through: :user_organize_events, source: :organizer
  
  validates :creator, :title, :description, presence: true
  validates :title, uniqueness: true
  
  has_attached_file :image, styles: {
    thumb: "100x",
    square: "200x",
    medium: "300x"
  }
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def self.search(search)
    search_condition = "%"+search+"%"
    where("title LIKE ? OR description LIKE ? OR tags LIKE ?", search_condition, search_condition, search_condition)
  end
  
  def self.timeline(month)
    m = month.to_i
    if m == 2
      m = 3
    elsif m == 3
      m = 6
    elsif m == 4
      m = 12
    elsif m == 5
      m = 60
    elsif m == 6
      m = 120
    else
      m = 0
    end
    time_interval = DateTime.now - m.month
    start_time = time_interval.at_end_of_month.midnight
    where(created_at: start_time..DateTime.now)
  end

  def create_from_url(url)
    self.image = URI.parse(url)
  end
end


