class Location < ApplicationRecord
  belongs_to :partner
  has_many :timeslots
  accepts_nested_attributes_for :timeslots, reject_if: :all_blank, allow_destroy: true
  validates :area, :coordinatorname, :contact, :address, presence: true
  validates_format_of :contact, with: /[789]\d{9}/
end
