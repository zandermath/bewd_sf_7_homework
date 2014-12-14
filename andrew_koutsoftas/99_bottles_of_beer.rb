require 'pry'
require 'pry-byebug'

#CLASS - LAB TIME 

# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

bottle = 99
while bottle > 0
	if bottle > 1
		puts "#{bottle} bottles of beer on the wall"
		puts "#{bottle} bottles of beer!"
		puts "You take one down and pass it around,"
		bottle = bottle - 1
		if bottle == 1
			puts "#{bottle} bottle of beer on the wall!"
		else
			puts "#{bottle} bottles of beer on the wall!"
		end
		puts
	else
		puts "#{bottle} bottle of beer on the wall"
		puts "#{bottle} bottle of beer!"
		puts "You take one down and pass it around,"
		puts "No more bottles of beer on the wall :-("
		bottle = bottle - 1
	end
end

