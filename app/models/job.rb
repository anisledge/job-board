class Job < ActiveRecord::Base
	validates :title, presence: true
	validates :requirements, presence: true, length: { maximum: 255 }
	validates :description, presence: true, length: { maximum: 255 }
	LOCATION_REGEX = /[A-Za-z\s]*,\s[A-Z]{2}/
	validates :location, presence: true,
	                     format: { with: LOCATION_REGEX }
	validates :employer, presence: true
end 
