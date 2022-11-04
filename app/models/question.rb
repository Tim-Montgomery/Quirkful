class Question < ApplicationRecord
    has_many :tests
    has_many :users, through: :tests
    has_one :answer
    
    validates :description, presence: true
end
