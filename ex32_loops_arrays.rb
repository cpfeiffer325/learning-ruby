the_count = %w[1 2 3 4 5]
fruits = %w[apples oranges pears apricots]
change = %w[1 pennies 2 dimes 3 quarters]

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
the_count.each do |number|
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred 
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}"}


# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..10).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}
puts "This is the array we built using a loop: #{elements}"

# two day array
twod_array = [[1,2,3],[4,5,6]]
puts "This is how a two d array looks: #{twod_array}"