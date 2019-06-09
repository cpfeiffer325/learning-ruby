# def while_loop(num, increment)
#   i = 0
#   numbers = []
#   while i < num
#     puts "At the top i is #{i}"
#     numbers << i
    
#     i += increment
#     puts "Numbers now: ", numbers
#     puts "At the bottomm i is #{i}"
#   end

#   puts "The numbers: "

#   # remember you can write this 2 other ways?
#   numbers.each do |num|
#     puts num
#   end
# end

# while_loop(16, 4)

def looper(num, incr)
  numbers = []
  (0...num).step(incr) do |i|
    puts "at the top i is #{i}"
    numbers << i

    puts "Number now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

looper(20, 4)
