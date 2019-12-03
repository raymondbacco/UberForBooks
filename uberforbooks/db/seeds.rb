# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
  User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    bio: Faker::Movies::HarryPotter.quote,
                    email: Faker::Internet.email,
                    password: Faker::Internet.password
                    )
end



genre = ["CS", "EE", "ECO", "MATH", "CHEM", "PHY", "ART"]
locs = ["Moffit", "Evans Hall", "Sodoi Coffee", "Soda Hall", "Cory Hall", "VLSH"]
10.times do |index|
  Book.create!(name: Faker::Lorem.words,
                    genre: genre.sample,
                    location: locs.sample,
                    user_id: User.all.sample.id
                    )
end