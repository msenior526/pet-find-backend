class User < ApplicationRecord
    has_secure_password

    has_many :pets
    has_many :saved_pets
end
