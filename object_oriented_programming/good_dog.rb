# learning about Accidental Method Overridding
# ----------------------------------------------------------------

class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end
end

Parent.superclass  

# child = Child.new
# child.say_hi         # => "Hi from Child."

# son = Child.new
# son.send :say_hi 

c = Child.new
c.instance_of? Child
c.instance_of? Parent






# learning about protected methods
# ----------------------------------------------------------------
# class Animal
#   def a_public_method
#     "Will this work? " + self.a_protected_method
#   end

#   protected

#   def a_protected_method
#     "Yes, I'm protected!"
#   end
# end


# fido = Animal.new
# puts fido.a_public_method 


# learning about modules
# ----------------------------------------------------------------
# module Swimmable # Note: A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling. 
#   def swim
#     "I'm swimming."
#   end
# end

# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end

#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end

#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# buddy.speak('Arf!')
# kitty.say_name('Kitty')
# value = Mammal.some_out_of_place_method(4) # can also be written value = Mammal::some_out_of_place_method(4) but this is not the preferred way
# puts value

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak"
#   end
# end

# puts "---Animal method lookup---"
# puts Animal.ancestors

# fido = Animal.new
# puts fido.speak
# puts fido.walk
# puts fido.swim

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# puts "---GoodDog method lookup---"
# puts GoodDog.ancestors

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Animal
#   include Swimmable
# end

# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new

# puts sparky.swim
# puts neemo.swim
# puts paws.swim





# learning about inheritance
# ----------------------------------------------------------------

# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   # def speak
#   #   "#{name} says Hello!"
#   # end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bruno = GoodDog.new("brown")

# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age
#   end
# end

# BadDog.new(2, 'bear')

# class Cat < Animal
# end

# learning about methods and
# ----------------------------------------------------------------

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     self.name = name
#   end

#   def speak
#     "#{name} from Cat class"
#   end
# end

# class GoodDog
#   DOG_YEARS = 7
#   attr_accessor :name, :height, :weight, :age
#   @@number_of_dogs = 0
  
#   def initialize(name, height, weight, age)
#     self.name = name
#     self.height = height
#     self.weight = weight
#     self.age = age
#     puts "This object was initialized with name: #{name}"
#   end

#   def speak
#     "#{name} from GoodDog class"
#   end
  
#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
  
#   def change_info(name, height, weight)
#     self.name = name
#     self.weight = weight
#     self.height = height
#   end
  
#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
  
#   def what_is_self
#     self
#   end
  
#   def to_s
#     "This dog's name is #{name} and it is #{human_years} in dog years."
#   end
  
#   # def public_disclosure
#   #   "#{self.name} in human years is #{human_years}"
#   # end

#   # private
  
#     def human_years
#       age * DOG_YEARS
#       # @@number_of_dogs += 1
#     end
# end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs', 4)
# puts sparky.speak
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts "New name: #{sparky.name}"
# puts sparky.info

# fido = GoodDog.new('Fido', '15 inches', '30 lbs', "6")
# fido.change_info('Alfredo', '30 inches', '70 lbs')
# puts "New name: #{fido.name}"
# puts fido.info
# p fido.what_is_self

# puts "Number of dogs: #{GoodDog.total_number_of_dogs}"

# puts sparky.human_years
# p sparky.what_is_self

# paws = Cat.new('Paws')
# puts sparky.speak
# puts paws.speak

