class Book < ApplicationRecord
  belongs_to :user
  has_many :rented
  # has_many :project_user, through: :rented
end
