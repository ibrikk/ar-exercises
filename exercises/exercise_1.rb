require_relative '../setup'

puts "Exercise 1"
puts "----------"
# Your code goes below here ...
burnaby = Store.new(
  name: "Burnaby",
  annual_revenue: 300000,
  mens: true,
  womens: true)
burnaby.save


richmond = Store.new(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens: false,
  womens: true)
richmond.save

gastown = Store.new(
  name: 'Gastown',
  annual_revenue: 190000,
  mens: true,
  womens: false
)
gastown.save

puts Store.count