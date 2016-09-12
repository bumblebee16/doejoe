class Timeslot < ApplicationRecord
  belongs_to :location
  validates :day, :start, :end, :noofseats, presence: true
  validates_time :end, :after => :start
end
