class User < ActiveRecord::Base
  has_secure_password
  validates :admin, :password_digest, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :roles
  has_many :events, through: :role
end
