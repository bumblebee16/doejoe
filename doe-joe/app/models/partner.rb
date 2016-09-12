class Partner < ApplicationRecord
	has_many :locations
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true
	validates :name, :email, presence: true
	validates :email, email_format: { message: "doesn't look like an email address" }
end
