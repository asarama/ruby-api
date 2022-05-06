# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Creating products..."
Product.create([
    {
        name: "Apple",
        brand: "Valley farms",
        price: "$1",
        description: "Red sweet"
    },
    {
        name: "Orange",
        brand: "Valley farms",
        price: "$2",
        description: "Orange tart"
    }
])
puts "Created 2 products."

puts "Creating users..."
%w(one two three four five).each do |name|
  User.create!(name: "#{name.capitalize} Example", email: "#{name}@example.com")
end
puts "Created 5 users."

puts "Creating companies..."
Company.create!([{name: "ABC"}, {name: "HashiCorp"}])
puts "Created 2 companies."

puts "Adding users to company..."
Company.find_by(name: "ABC").users << User.first(3)
puts "Added 3 users to company ABC"

Company.find_by(name: "HashiCorp").users << User.last(2)
puts "Added 2 users to company HashiCorp"

puts "Creating projects..."
project1 = Project.create!(name: "Epic Project", start_date: 2.weeks.ago, end_date: Date.current)
project2 = Project.create!(name: "Medium Project", start_date: 1.week.ago, end_date: 1.day.ago)
project3 = Project.create!(name: "Small Project", start_date: 3.days.ago)
project4 = Project.create!(name: "Tiny Project", start_date: 1.day.ago)
puts "Created 4 projects"

puts "Adding projects to company..."
Company.find_by(name: "ABC").projects << Project.first(4)
puts "Added 4 to company ABC"

puts "Done."