require 'rails_helper'

RSpec.describe Expense, :type => :model do
  it { should validate_presence_of(:item) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:calculation_type) }
  it { should validate_presence_of(:approved) }
  it { should validate_presence_of(:event_id) }
end
