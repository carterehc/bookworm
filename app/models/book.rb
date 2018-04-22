class Book < ApplicationRecord
    belongs_to :user, class_name: "User"
    belongs_to :author, class_name: "Author"
    #validates_associated :author    #validates here because author could already exist. If author validates book, will only validate when author's first book is saved.
    validates :title, presence:true
    #validates :
end
