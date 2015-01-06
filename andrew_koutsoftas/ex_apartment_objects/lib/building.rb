#Building Class
require 'pry'
require 'pry-byebug'

class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "------------#{@name} Apartment List--------------"
	    @apartments.each do |apartment|
	      puts apartment
	      if (apartment.renter != nil)
	      	puts apartment.renter
	      else
	      	puts "This apartment is vacant."
	      end
	    end
	end

	def to_s
    	"Building #{name} at #{address} has #{@apartments.count} apartments."
  	end
end
