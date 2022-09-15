class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendee_events
  has_many :attendes, through: :attendee_events, source: :user
end
