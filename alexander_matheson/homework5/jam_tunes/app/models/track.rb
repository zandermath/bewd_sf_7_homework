class Track < ActiveRecord::Base
	belongs_to :artist

	validates_presence_of :title
	validates_uniqueness_of :title
end
