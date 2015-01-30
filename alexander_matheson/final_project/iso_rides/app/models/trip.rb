class Trip < ActiveRecord::Base
	validates :description, presence: true
	validates :region, presence: true
end
