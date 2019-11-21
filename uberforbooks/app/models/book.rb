class Book < ApplicationRecord
  belongs_to :owner
  has_many :rented
  has_many :project_user, through: :rented
end
