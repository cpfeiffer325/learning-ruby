module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_reader :model
  @@number_of_vehicles = 0
    
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end
  
  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end
  
  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end
  
  def current_speed
    puts "You are now going #{@current_speed} mph."
  end
  
  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
  
  def spray_paint(c)
    self.color = c
    puts "I sprayed my car a new color of #{c}"
  end
  
  def self.gas_mileage(miles, gallons)
    puts "gas mileage is #{miles / gallons}mpg"
  end

  def self.number_of_vehicles
    puts "This factory has created #{@@number_of_vehicles} vehicles"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  
  def to_s
    "My car is a #{color}, #{year}, #{model}" # use @model if model isn't declared as a attr_reader
  end
end

class MyTruck < Vehicle
  include Towable
  
  NUMBER_OF_DOORS = 2
end

puts "My Car method lookup: #{MyCar.ancestors}"
puts "My Truck method lookup: #{MyTruck.ancestors}"
puts "My Vehicle method lookup: #{Vehicle.ancestors}"

forester = MyCar.new(2019, 'Subaru Forester', 'blue')
ram = MyTruck.new(2015, 'Dodge Ram', 'black')

forester.speed_up(30)
forester.current_speed
forester.speed_up(25)
forester.current_speed
forester.brake(30)
forester.current_speed
forester.brake(20)
forester.current_speed
forester.shut_down
forester.current_speed

forester.color = 'black'
puts forester.color
puts forester.year

forester.spray_paint('green')
puts forester.color

MyCar.gas_mileage(400, 14)
puts forester

raptor = MyTruck.new(2017, 'Ford F150', 'grey')
golf = MyCar.new(2018, 'VW Golf R', 'blue')
puts Vehicle.number_of_vehicles

puts ram.age