class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :date, presence: true
end
