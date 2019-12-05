class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one :rented
end
