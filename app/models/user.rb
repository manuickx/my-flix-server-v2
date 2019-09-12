class User < ApplicationRecord

  has_secure_password
  
    has_many :user_favourites
  
    validates :email, uniqueness: true
  
end
