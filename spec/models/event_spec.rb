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

require 'rails_helper'

RSpec.describe Event, :type => :model do
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:start_date)}
  it { should validate_presence_of(:end_date)}
end
