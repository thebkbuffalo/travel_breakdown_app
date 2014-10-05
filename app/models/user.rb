
class User < ActiveRecord::Base
  has_many :roles
  has_many :events, through: :role
  has_many :expenses
  has_secure_password
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admin, :inclusion => {:in => [true, false]}

 	def is_admin?
    self.admin == true
  end

end
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  image           :string(255)
#  name            :string(255)
#  phone_number    :string(255)
#  admin           :boolean          default(FALSE)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#


