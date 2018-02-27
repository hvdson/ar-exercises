require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 8"
puts "----------"

@store1.employees.create(first_name: "Dank", last_name: "Memes", hourly_rate: 60)
Store.find(1).employees.each { |employee| puts "Employee at Store 1: #{employee.first_name} #{employee.last_name}, Password: #{employee.password}" }