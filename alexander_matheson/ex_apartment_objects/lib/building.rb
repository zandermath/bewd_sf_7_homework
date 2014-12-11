#Building Class
class Building

	#setter/getter on specified attributes
	attr_accessor :building_name, :building_address

	def initialize (building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = {}
	end

	def add_apartments (apartment)
		puts apartment
	end

end
