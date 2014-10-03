# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  start_date  :date
#  end_date    :date
#  amount_owed :decimal(, )
#  permission  :string(255)
#  paid        :boolean          default(FALSE)
#  event_id    :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
