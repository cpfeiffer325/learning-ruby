puts "I will now count my chicken:"
# divide 30 by 6 and then adds 25, 25 times 3 modulus returns 3 which subtracted from 100 gives 97
puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"
# all operations make sense except where does the 1/4 go in the total
puts Float(3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6)

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7

puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"