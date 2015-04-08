class Gig < ActiveRecord::Base
 	belongs_to :performer
 	belongs_to :venue
	has_and_belongs_to_many :users
  	validates :performer_id, presence: true
  	validates :venue_id, presence: true
  	validates :date, presence: true
end
