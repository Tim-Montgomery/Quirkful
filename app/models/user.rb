class User < ApplicationRecord
    has_many :tests
    has_many :questions, through: :tests

    has_secure_password

    validates :name, presence: true, uniqueness: true

    def reset_password!(password)
        self.password = password
        save!
    end
end
