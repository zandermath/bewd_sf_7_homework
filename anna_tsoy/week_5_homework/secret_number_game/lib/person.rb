class Person
# this class will likely be simple, and just remember its name
	attr_accessor :name

	def initialize (name)
		@name = name.capitalize
	end

	def to_s
		"#{@name}"
	end	
end