# == Schema Information
#
# Table name: location_ends
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  pic        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class LocationEnd < ActiveRecord::Base
	has_and_belongs_to_many :location_starts
	has_many :trips

	# when using image magick only refer to column in the database as :image
	# and not as image_id
	attachment :image
end
