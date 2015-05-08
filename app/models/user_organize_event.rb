class UserOrganizeEvent < ActiveRecord::Base
  belongs_to :organizer, foreign_key: 'user_id', class_name: 'User'
  belongs_to :organized_event, foreign_key: 'event_id', class_name: 'Event'
end

