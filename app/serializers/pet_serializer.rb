class PetSerializer < ActiveModel::Serializer
  attributes :name, :gender, :species, :age
end