class Book < ApplicationRecord
  belongs_to :user
  has_many :renteds
end
