class Post < ActiveRecord::Base
  belongs_to :event
  
  validates :event, :text_content, presence: true
end
