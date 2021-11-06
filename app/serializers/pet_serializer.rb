class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species, :age, :user_id
end
