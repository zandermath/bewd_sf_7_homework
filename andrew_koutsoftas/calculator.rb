def multiply(num1, num2)
 num1 * num2
end

def divide(num1,num2)
	num1 / num2
end

def remainder(num1,num2)
#modulo
	num1 % num2
end

def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end


#conditional that checks for type integer 
#prompt 
puts "Enter number 1"
first = gets.chomp.to_i
puts "Enter number 2"
second = gets.chomp.to_i
result1 = multiply(first,second)
result2 = divide(first,second)
result3 = remainder(first,second)
result4 = add(first,second)
result5 = subtract(first,second)
puts "The result of multiplying is #{result1}"
puts "The result of dividing is #{result2}"
puts "The remainder of dividing is #{result3}"
puts "The result of adding is #{result4}"
puts "The result of subtracting is #{result5}"