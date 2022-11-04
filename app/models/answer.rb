class Answer < ApplicationRecord
    belongs_to :question

    validates :correct_answer, presence: true
end
