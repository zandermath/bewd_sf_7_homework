# == Schema Information
#
# Table name: trips
#
#  id                :integer          not null, primary key
#  description       :text
#  has_car           :boolean
#  spots             :integer
#  cost              :decimal(, )
#  date_start        :date
#  date_end          :date
#  pick_up           :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  location_start_id :integer
#  location_end_id   :integer
#  activity_id       :integer
#  region_id         :integer
#

class Trip < ActiveRecord::Base

	belongs_to :activity
	belongs_to :location_end
	belongs_to :location_start
	belongs_to :user
	belongs_to :region
	belongs_to :trip

	#geocoding methods
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	# when using image magick only refer to column in the database as :image
	# and not as image_id
	attachment :image

	# call the concern module filterable for trip model search
	#include Filterable
 def self.search_by_activity_and_region(activity_id, region_id)
 	Trip.where(activity_id:activity_id.to_i, region_id: region_id.to_i) #this will return an array of objects
 end
end
