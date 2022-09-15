class AttendeeEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
