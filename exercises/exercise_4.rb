require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new (
  name: 'surrey',
  annual_revenue: 224000,
  mens: false,
  womens: true
)
surrey.save

whistler = Store.new (
  name: 'whistler',
  annual_revenue: 1900000,
  mens: true,
  womens: false
)
whistler.save

yaletown = Store.new (
  name: 'yaletown',
  annual_revenue: 430000,
  mens: true,
  womens: false
)
yaletown.save

@mens_stores_array = Store.where(mens: true).pluck(:name, :annual_revenue)

pp @mens_stores_array

@mens_stores_array.each do |el|
  pp "#{el[0]} #{el[1]}"
end

@womens_stores_array = Store.where(womens: true).where("annual_revenue < ??, 1000000").pluck(:name, :annual_revenue)

@womens_stores_array.each do |el|
  pp "#{el[0]} #{el[1]}"
end 

