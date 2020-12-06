class User < ApplicationRecord
    has_secure_password

    has_many :blogs
    has_many :reviews, through: :blogs

    validate :email, presence: true, uniqueness: true
end
