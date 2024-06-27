class User < ApplicationRecord
    has_secure_password
    # has_secure_password :profile_password   # Utilised profile_password field

    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    
end

# user.authenticate_profile_password(‘profile_password_value’) 
#normally: user.authenticate('password_value')