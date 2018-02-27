require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 8"
puts "----------"

# Hypothesis: now switched to after_create: new row in table is initialized w/ nil password - should work still since there's no validation for password column in employees AR
# Result: When exercise was run, the output showed a blank password field
# Hypothesis: Since the new employee was made and inserted into the table already, after_create has no reference to the object created - try using update in the callback
# Result: it works! - idk why use one or other. maybe performance since 2nd way is run twice and async?
@store1.employees.create(first_name: "Dank", last_name: "Memes", hourly_rate: 60)

Store.find(1).employees.each { |employee| puts "Employee at Store 1: #{employee.first_name} #{employee.last_name}, Password: #{employee.password}" }