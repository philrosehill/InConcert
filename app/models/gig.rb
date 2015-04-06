class Gig < ActiveRecord::Base
  belongs_to :performer_id
  belongs_to :venue_id
end
