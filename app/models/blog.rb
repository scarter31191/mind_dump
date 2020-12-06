class Blog < ApplicationRecord
    has_man :reviews
    has_man :users, through: :reviews
    validates :title, :content, presence: true
    
end
