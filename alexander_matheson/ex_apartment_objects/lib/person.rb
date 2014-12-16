#Person Class.
class Person

	attr_accessor :name, :credit_score, :gender

	def initialize (name, credit_score, gender)
		@name = name
		@credit_score = credit_score
		@gender = gender
		@hobbies = []
		@words = {}
	end

end


#joe = Person.new('joe', 54, 'male')

#joe.hobbies.push()

#joe.words[:hello] = 'greeting'

