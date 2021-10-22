class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :email, :location
end
