class Post < ActiveRecord::Base
    belongs_to :event
    has_many :user_vote_posts
    has_many :voters, through: :user_vote_posts, source: :voter
    has_many :user_create_posts
    has_many :creaters, through: :user_create_posts, source: :creater
    
    
    has_attached_file :image, styles: {
      thumb: '100x100#',
      square: '200x200#',
      medium: '300x300#'
    }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    validates :event, :text_content, presence: true
    
    def create_from_url(url)
      self.image = URI.parse(url)
    end
end
