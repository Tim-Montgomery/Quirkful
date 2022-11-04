class TestSerializer < ActiveModel::Serializer
  attributes :id, :correct
  has_many :questions
  has_many :users
end
