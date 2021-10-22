class Pet < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :saved_pets
  has_many :saved_by, through: :saved_pets, source: :user
end
