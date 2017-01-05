class AboutU < ActiveRecord::Base
  validates_format_of :phone, :with => /\d{8}/, :message => " of phone must be phone number"
  validates_presence_of :name
end
