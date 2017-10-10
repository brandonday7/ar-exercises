require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

new_instance = @store1.employees.create(first_name: "Ron", last_name: "Weasley", hourly_rate: 200)
newer_instance = Employee.create(first_name: "Ron", last_name: "Weasley", hourly_rate: 200)


puts "Please input a store: "
store_name = gets.chomp

new_store = Store.create(name: store_name, mens_apparel: false, womens_apparel: false)

new_store.errors.messages.each do |message|
  puts message
end

