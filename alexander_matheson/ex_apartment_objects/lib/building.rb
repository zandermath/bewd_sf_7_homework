#Building Class
class Building

	#setter/getter on specified attributes
	attr_accessor :building_name, :building_address

	def initialize (building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "---------#{@name} Apartment List-------"
		@apartments.each do |apartment|
			puts apartment
			puts (apartment.is_occupied? ? apartment.renter : "This apartment is vacant")
		end
	end

	def to_s
		"Building #{building_name} at #{building_address} has #{@apartments.count} apartments."
	end
end




