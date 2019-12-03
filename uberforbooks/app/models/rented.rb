class Rented < ApplicationRecord
  belongs_to :book
  belongs_to :user


	def self.valid_rental(user, book)
		user.id != book.user_id
	end

end