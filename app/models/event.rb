class Event < ApplicationRecord
  has_many :event_attendees
  has_many :attendees, through: :event_attendees, source: :user
  belongs_to :creator, class_name: "User"

  scope :past, -> { where("date < ?", Date.today) }
  scope :upcoming, -> { where("date >= ?", Date.today) }
end
