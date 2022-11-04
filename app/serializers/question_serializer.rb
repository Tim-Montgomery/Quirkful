class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_many :tests
  has_many :users
  has_one :answer
end
