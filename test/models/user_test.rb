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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
