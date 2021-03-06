class RecordLabel < ActiveRecord::Base
	has_many :artists
	has_many :tracks, through: :artists

	validates_presence_of :name
	validates_uniqueness_of :name
end
