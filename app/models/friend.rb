class Friend < ActiveRecord::Base
  validates_format_of :description, :with => /\d{8}/, :message => " of phone must be phone number"
  validates :name,  :presence => { :message => "cannot be blank" }
  belongs_to :user
end
