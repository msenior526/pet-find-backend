class Pet < ApplicationRecord
  belongs_to :user
  has_many :saved_pets
  has_many :saved_by, through: :saved_pets, source: :user
end
