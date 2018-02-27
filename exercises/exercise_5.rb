require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@tnr = Store.sum("annual_revenue")
@number_of_stores = Store.count

puts "Total Revenue: #{@tnr}, Average annual revenue: #{@tnr / @number_of_stores}"

puts Store.where("annual_revenue > 1000000").count