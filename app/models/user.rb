class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :blogs, through: :reviews

    validate :email, presence: true, uniqueness: true
end
