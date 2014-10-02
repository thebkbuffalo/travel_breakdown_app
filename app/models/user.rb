class User < ActiveRecord::Base

  has_secure_password
  # validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admin, :inclusion => {:in => [true, false]}
  has_many :roles
  has_many :events, through: :role
end
