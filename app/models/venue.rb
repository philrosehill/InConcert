class Venue < ActiveRecord::Base
	has_many :gigs
	has_many :photos
	has_and_belongs_to_many :users

	validates :venue_name, presence: true
	validates :venue_description, length: {minimum: 4}
	validates :venue_zip_code, length: {minimum: 5}
end
