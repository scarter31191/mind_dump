class Review < ApplicationRecord
    #joins table
    belongs_to :blog
    belongs_to :user

    validates :content, presence: true
end
