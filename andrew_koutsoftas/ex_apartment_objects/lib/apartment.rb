#Apartment class.
require 'pry'
require 'pry-byebug'

class Apartment
	#getter/setter stuff
	attr_accessor :name, :apt_sqft, :apt_bathrooms, :apt_bedrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bathrooms, apt_bedrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = nil
		@rent = nil
	end

  	def to_s
    	"Apartment: #{@name} \n sqft: #{@sqft} \t Bedrooms: #{@num_bedrooms} \t Bathrooms: #{@num_bathrooms}"
  	end
	
	#initialize
end
