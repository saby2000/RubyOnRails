class Book < ApplicationRecord
    validates :B_id, presence: true
    validates :B_title, presence: true
    validates :Author, presence: true
    validates :Publisher, presence: true
   # validates :Year, presence: true
end
