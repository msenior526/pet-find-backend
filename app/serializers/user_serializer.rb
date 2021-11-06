class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :location, :pets_saved
end
