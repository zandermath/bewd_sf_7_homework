class LocationEnd < ActiveRecord::Base
	has_and_belongs_to_many :location_starts
	has_many :trips
end
