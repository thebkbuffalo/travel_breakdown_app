# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  users_title :string(255)
#  start_date  :date
#  end_date    :date
#  location    :string(255)
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
