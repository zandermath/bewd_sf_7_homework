require 'pry'
require 'pry-byebug'

class Person

	#getter && setter logic
	attr_accessor :name, :title, :job

	#instance factory maker
	def initialize(name)
		@name = name
	end

	#instance method
	def greet
		puts "Hi, my name is #{@name}"
	end
end

binding.pry
bryan = Person.new("Bryan")