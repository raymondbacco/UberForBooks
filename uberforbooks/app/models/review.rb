class Review < ApplicationRecord
  belongs_to :rented, optional: true

  def self.valid_rating(rating)
  	# 1-5 int by default
  	(1..5).include?(rating) and rating.is_a?Integer
  end

end
