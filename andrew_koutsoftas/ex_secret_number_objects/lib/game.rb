require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

attr_accessor :secret, :player, :guesses_left

  def initialize(player_name)
    @secret = SecretNumber.new
    @player = Person.new(player_name)
    @guesses_left = 5
  end

  def start
  	puts "Welcome to the game, #{player.name}!  You have #{guesses_left} to guess the Secret Number."
  	while @guesses_left != 0
  		get_guess
  		if @guess == @secret.number
  			break
  		end
  	end
  end

  def get_guess
  	puts "What is your guess for the secret number?"
  	@guess = gets.to_i
  	@guesses_left -= 1
  	check_guess(@guess)
  end

  def check_guess(guess)
  	if guess == @secret.number
  		puts "\nCongratulations! You have won!\n"
  	elsif guess != @secret.number && guesses_left > 0
  		if guess < @secret.number
  			puts "You guessed #{guess}, which is lower than the Secret Number."
  		elsif guess > @secret.number
  			puts "You guessed #{guess}, which is higher than the Secret Number."
  		end
  	else
  		puts "Sorry, you have run out of guesses and the game is over."
  	end
  end
end
