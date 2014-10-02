class User < ActiveRecord::Base
  validates :admin, :password_digest, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :roles
  has_many :events, through: :role
end
