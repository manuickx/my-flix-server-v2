class User < ApplicationRecord
    class User < ApplicationRecord
        has_secure_password
      
        # has_many :user_favorites
      
        validates :email, uniqueness: true
      
      end
end
