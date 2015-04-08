class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :performers
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :gigs
	validates :name, presence: true
	validates :rank, presence: true
	validates :user_zip_code, length: {minimum: 5}

end
