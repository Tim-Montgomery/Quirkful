class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :correct_answer
  has_one :question
end
