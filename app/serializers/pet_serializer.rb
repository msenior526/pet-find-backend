class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species, :age, :owner
end
