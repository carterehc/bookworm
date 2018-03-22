class Book < ApplicationRecord
    belongs_to :authors, class_name: Author
end
