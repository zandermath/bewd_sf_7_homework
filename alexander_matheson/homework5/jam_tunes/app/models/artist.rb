class Artist < ActiveRecord::Base
	belongs_to :record_label
	has_many :tracks, dependent: :destroy
end
