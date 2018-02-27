require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find(3)
@store3.destroy

#this throws error
# puts Store.find(3)

# outputs 2
puts Store.count