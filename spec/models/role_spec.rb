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

require 'rails_helper'

RSpec.describe Role, :type => :model do
  it { should belong_to(:user) }
  it { should belong_to(:event) }
  it { should validate_presence_of(:permission) }
  it { should validate_presence_of(:event_id) }
  it { should validate_presence_of(:user_id) }
end
