class LocationStart < ActiveRecord::Base
	belongs_to :region
	has_and_belongs_to_many :location_ends
	has_many :trips
end
