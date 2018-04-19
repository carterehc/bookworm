class User < ApplicationRecord
    validates :username, presence: true, length: {minimum: 1, maximum: 100}
    validates :password, presence: true, length: {minimum: 6, maximum: 100}
    
end
