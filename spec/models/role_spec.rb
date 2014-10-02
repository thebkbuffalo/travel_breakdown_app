require 'rails_helper'

RSpec.describe Role, :type => :model do
  it { should have_one(:user) }
  it { should have_one(:event) }
  it { should validate_presence_of(:permission) }
  it { should validate_presence_of(:event_id) }
  it { should validate_presence_of(:user_id) }
end
