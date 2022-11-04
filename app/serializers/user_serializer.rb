class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :score
end
