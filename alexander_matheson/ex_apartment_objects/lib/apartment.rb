#Apartment class.
class Apartment

	#setter/getter on specified attributes
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

	def initialize (name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
	end

end
