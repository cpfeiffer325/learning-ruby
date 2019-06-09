name = 'Zed A. Shaw'
age = 35
height = 74
weight = 180 #lbs
eyes = 'Blue'
teeth = 'White'
hair= 'Brown'

puts "Let's talk about #{name}"
puts "He's #{(height * 2.54).round} cms tall."
puts "He's #{(weight / 2.2).round} kilos heavy."
puts "Actually that's not too heavy"
puts "He's got ##{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# tricky test of code
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"