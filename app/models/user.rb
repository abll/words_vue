class User < ApplicationRecord
    has_secure_password

    attr_accessor :name, :email, :username, :password_digest, :password_salt
    validates_uniqueness_of :email, :username
    
    #Validations for users can go here!
    
end
