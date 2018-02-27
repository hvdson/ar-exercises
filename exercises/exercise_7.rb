require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Employee.create(first_name: "oshit", last_name: "waddup", hourly_rate: 60)
# Employee.all.each { |employee| puts "This guy name: #{employee.first_name}" }
# Your code goes here ...
# @store_bad = Store.create(name: "Shitty store", annual_revenue: -1)

print "Enter a store name to add: "
store_name = gets.chomp

begin
  Store.create(store_name)
rescue Exception => ex
  puts "UH OH!! Error of type: #{ex.class} \nMessage is: #{ex.message}"
end

