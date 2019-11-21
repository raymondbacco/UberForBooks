class ProjectUser < ApplicationRecord
  belongs_to :owns
  belongs_to :rent_to
  has_many :rented
  has_many :book, through: :rented
end
