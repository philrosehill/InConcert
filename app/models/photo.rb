class Photo < ActiveRecord::Base
	mount_uploader :filename, PhotoUploader
 	belongs_to :venue
 	validates :filename, presence: true
end
