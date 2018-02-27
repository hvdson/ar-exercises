require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Burnaby store
@store1.employees.create(first_name: "Dank", last_name: "Memes", hourly_rate: 60)
@store1.employees.create(first_name: "Goku", last_name: "Saiyan", hourly_rate: 9000)
@store1.employees.create(first_name: "Penut", last_name: "Butter", hourly_rate: 1)
Store.find(1).employees.each { |employee| puts "Employee at Store 1: #{employee.first_name} #{employee.last_name}" }

# Richmond store
@store2.employees.create(first_name: "Costo", last_name: "Nation", hourly_rate: 12)
@store2.employees.create(first_name: "Jazz", last_name: "Hands", hourly_rate: 99)
@store2.employees.create(first_name: "Shrek", last_name: "Is Love", hourly_rate: 69)
Store.find(2).employees.each { |employee| puts "Employee at Store 2: #{employee.first_name} #{employee.last_name}" }
