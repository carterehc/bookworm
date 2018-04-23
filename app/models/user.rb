class User < ApplicationRecord
    has_many :books
    before_save {self.username = username.downcase}
    validates :username, presence: true, length: {minimum: 1, maximum: 100}, uniqueness: {case_sensitive: false}
    
    
    
    
    has_secure_password
    validates :password, presence: true, length: {minimum: 6, maximum: 100}
    
    ##model methods
    def User.digest(string)
        #make password digest for testing
        cost = ActiveModel::SecurePassword.min_cost? BCrypt::Engine::MIN_COST:BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
