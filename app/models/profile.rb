class Profile < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :phone

  belongs_to :user
  has_many :profile_contents
end
