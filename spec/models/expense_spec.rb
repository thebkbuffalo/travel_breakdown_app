# == Schema Information
#
# Table name: expenses
#
#  id               :integer          not null, primary key
#  item             :string(255)
#  amount           :decimal(, )
#  description      :string(255)
#  start_date       :date
#  end_date         :date
#  calculation_type :string(255)
#  tag              :string(255)
#  approved         :boolean          default(FALSE)
#  event_id         :integer
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#

require 'rails_helper'

RSpec.describe Expense, :type => :model do
  it { should validate_presence_of(:item) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:calculation_type) }
  it { should validate_presence_of(:event_id) }
end
