class Rented < ApplicationRecord
  belongs_to :project_user
  belongs_to :book
  belongs_to :renter
end
