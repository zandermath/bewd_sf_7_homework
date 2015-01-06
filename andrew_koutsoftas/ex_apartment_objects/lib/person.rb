#Person Class.
class Person
#getter && setter logic
	attr_accessor :name, :credit_score, :gender

	#instance factory maker
	def initialize(name, credit_score, gender)
		@name = name
		@credit_score = credit_score
		@gender = gender
	end

	def to_s
	    "Tenant: #{@name} \n Credit Score: #{@credit_score}."
	end
end
