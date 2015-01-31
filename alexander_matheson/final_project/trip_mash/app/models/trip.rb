class Trip < ActiveRecord::Base
	belongs_to :activity
	belongs_to :location_end
	belongs_to :location_start
	belongs_to :user

	def self.search(search)
		if search
			where('lower(region) LIKE ?', "%#{search.downcase}%")
		else
			scoped
		end
	end
end
