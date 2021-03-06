# == Schema Information
#
# Table name: location_starts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  region_id  :integer
#  latitude   :float
#  longitude  :float
#  address    :string(255)
#

class LocationStart < ActiveRecord::Base
	belongs_to :region
	has_and_belongs_to_many :location_ends
	has_many :trips

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
