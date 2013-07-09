class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true, on: :create

  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

def role? role
  self.role == role
end



end
