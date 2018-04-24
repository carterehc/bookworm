class Book < ApplicationRecord
    belongs_to :user, class_name: "User"
    validates :user_id, presence: true
    #validates_associated :author    #validates here because author could already exist. If author validates book, will only validate when author's first book is saved.
    validates :title, presence: true
    validates :author_first, length: {maximum: 75}    #I don't think there are many names longer than 75 characters
    validates :author_last, length: {maximum: 75 }
    
    default_scope -> {order(title: :desc)}    #validates :
end
