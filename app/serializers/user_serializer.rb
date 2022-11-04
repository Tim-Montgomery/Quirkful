class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :score
  has_many :tests
  has_many :questions
end
