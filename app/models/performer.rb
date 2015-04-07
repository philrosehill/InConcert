class Performer < ActiveRecord::Base
	has_many :gigs
	has_and_belongs_to_many :users
	validates :performer_name, presence: true
	validates :performer_description, length: {minimum: 4}
end
