class Event < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
