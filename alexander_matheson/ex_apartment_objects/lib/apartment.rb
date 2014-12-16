#Apartment class.
class Apartment

	#setter/getter on specified attributes
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

	def initialize (name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = nil
		@rent = nil
	end

	def is_occupied?
		@renter != nil
	end

	def to_s
		"Apartment: #{@name} \n sqft: #{@apt_sqft} \t Bedrooms: #{@apt_bedrooms} \t Bathrooms: #{@apt_bathrooms}"
	end
end
