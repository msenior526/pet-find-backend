class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :email, :location, :pets_saved
end
