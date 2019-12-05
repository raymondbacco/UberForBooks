# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# fake users
locs = ["Moffit", "Evans Hall", "Sodoi Coffee", "Soda Hall", "Cory Hall", "VLSH"]
10.times do |index|
  User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    bio: Faker::Movies::HarryPotter.quote,
                    email: Faker::Internet.email,
                    location: locs.sample,
                    password: Faker::Internet.password
                    )
end


# fake books
book_name = ["Algorithm", "Data Structure", "Machine Learning"]
genre = ["CS", "EE", "ECO", "MATH", "CHEM", "PHY", "ART"]
10.times do |index|
  Book.create!(name: book_name.sample,
                    genre: genre.sample,
                    user_id: User.all.sample.id
                    )
end


# fake rental record
rented_times = 5
rented_times.times do |index|
	user = User.all.sample
	while true
		book = Book.all.sample
		break if Rented.valid_rental(user, book)
	end
	Rented.create!(user_id: user.id,
						book_id: book.id,
						)
end



reviews_sample = ["Good book, nice guy", 
			"Wholesome dude but the book is wasted",
			"Scam!"]

# fake review
(rented_times-1).times do |index| # mimic when user don't write a review
	Review.create!(book_id: Rented.all[index].book_id,
						reviews: reviews_sample.sample,
						rating: (1..5).to_a.sample,
						)
end



