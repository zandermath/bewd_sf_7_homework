require 'lib/person'
require 'lib/secret_number'

class Game
# this class will make and run game

	attr_accessor :player, :secret_number, :play, :count

	def initialize(name)
		@player = Person.new (name)
		@secret_number = SecretNumber.new
		@play = run_game
		@count = nil
	end

# called at initialization of game Class, starts the game loop
	def run_game
		count = 0
		loop do
			count += 1
			guess = take_number
			test = game_loop(guess, count)
			break if (test == true)
		end
	end


private 

# action to take number
	def take_number
		puts
		puts "Guess my number"
		guess = gets.to_i
		return guess
	end

# guess and count method
 	def game_loop (guess, count)
		if guess == secret_number.num
			puts "congratulations #{player.name}, you guessed the secret number *#{secret_number.num}* in #{count} tries"
			return true
		elsif guess > secret_number.num
			puts "TOO highhhh!!!"
			return false
		else
			puts "TOO lowwww!!!"
			return false
		end
	end


# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
end
