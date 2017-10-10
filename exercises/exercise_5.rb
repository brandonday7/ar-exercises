require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "$#{total_revenue}"

num_of_locations = Store.count

puts "Average annual revenue: $#{total_revenue/num_of_locations}"

num_of_millionaires = Store.where("annual_revenue > 1000000").count
puts "Number of stores over $1 000 000: #{num_of_millionaires}"