class Trip < ActiveRecord::Base
	belongs_to :activity
	belongs_to :location_end
	belongs_to :location_start
	belongs_to :user
end
