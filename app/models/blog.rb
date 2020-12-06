class Blog < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates :title, :content, presence: true
    
end
