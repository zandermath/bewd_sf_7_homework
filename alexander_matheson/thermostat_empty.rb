require 'pry'
require 'pry-byebug'

class Thermostat

  #Add getter_setter method with attribute temperature here
  attr_accessor :temperature, :target_temp, :all_temps 

  #instance factory!!!
  def initialize(temperature)
    @temperature = temperature
    @target_temp = nil
    @all_temps = nil
  end

  #instance method 
  def get_desired_temperature(target_temp)
    if temperature < target_temp
      turn_on_heater(temperature)
    elsif temperature > target_temp
      turn_off_heater(temperature)
    else
      puts "Just right"
    end
  end
  ####

  #class method  
  def self.detect_temperature(all_temps, target_temp)
    #loop through array
    all_temps.each do |temp|

    #create and instance nest = Thermostat.new
      reading = Thermostat.new(temp)
      puts "current temp is #{temp}"
      puts "requested temp is #{target_temp}"

      #call instance method on instance created
      reading.get_desired_temperature(target_temp)
    end
  end

 private 
  def turn_on_heater(temperature)
    puts "turning on heater"
  end

  def turn_off_heater(temperature)
    puts "turning off heater"
  end

end

# nest = Thermostat.new(29)
# puts "#{nest.temperature}"

#The temperature is being read externally somewhere, so let's just create an array of those readings 
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22] 

#set by user 
target_temp = 75

#class method called to get this party started!!!
Thermostat.detect_temperature(all_temps, target_temp)



