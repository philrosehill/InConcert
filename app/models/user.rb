class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :avatar
  has_many :photos
  has_and_belongs_to_many :performers
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :gigs

end
