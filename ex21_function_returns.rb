def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

# add(age(30 + 5) + subtract(height(78 - 4) - multiply(weight(90 * 2) * divide(iq(100 / 2) / 2)))) =>
# return 35 + (74 - (180 * (50 / 2)) = -4391
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

step1 = iq
step2 = divide(step1, 2)
step3 = weight
step4 = multiply(step3, step2)
step5 = height
step6 = subtract(step5, step4)
step7 = age
step8 = add(step7, step6)
puts "manual calculating the puzzle in steps equals #{step8} and produces the same result"



