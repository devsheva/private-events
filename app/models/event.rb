class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', dependent: :destroy
  has_many :attendee_events
  has_many :attendes, through: :attendee_events, source: :user

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
