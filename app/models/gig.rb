class Gig < ActiveRecord::Base
 	belongs_to :performer_id
 	belongs_to :venue_id
	has_and_belongs_to_many :users
  	validates :performer_id, presence: true
  	validates :venue_id, presence: true
end
