class User < ApplicationRecord
    has_secure_password

    has_many :pets
    has_many :saved_pets
    has_many :pets_saved, through: :saved_pets, source: :pet

    validates :username, :email, presence: true, uniqueness: true
    validates :name, :location, presence: true
end
