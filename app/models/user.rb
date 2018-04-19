class User < ApplicationRecord
    before_save {self.username = username.downcase}
    validates :username, presence: true, length: {minimum: 1, maximum: 100}, uniqueness: true
    validates :password, presence: true, length: {minimum: 6, maximum: 100}
    
end
