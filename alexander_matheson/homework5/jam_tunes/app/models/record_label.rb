class RecordLabel < ActiveRecord::Base
	has_many :artists
	has_many :tracks, through: :artists
end
