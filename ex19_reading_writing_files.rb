def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

# calls function and uses inputs to run all puts
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# assigns value to separate variables and then calls them into the function and runs all the puts
puts "OR, we can use variables from out script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# completes calculations in the input fields of the function before running all puts
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# calls variables and then completes an additional calculation before running all puts
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def leftovers(cheese_count, boxes_of_crackers)
  if cheese_count > boxes_of_crackers
    puts "We have cheese but no crackers"
  else
    puts "We have crackers but no cheese"
  end
end

leftovers(amount_of_cheese, amount_of_crackers)
leftovers(amount_of_cheese + 120, amount_of_crackers)
