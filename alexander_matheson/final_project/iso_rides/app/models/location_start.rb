class LocationStart < ActiveRecord::Base
	belongs_to :region
	has_many :location_ends
end
