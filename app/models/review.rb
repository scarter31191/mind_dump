class Review < ApplicationRecord
    #joins table
    belongs_to :book
    belongs_to :user

    validates :content, presence: true
end
