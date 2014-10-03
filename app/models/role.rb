
class Role < ActiveRecord::Base
  validates :permission, :event_id, :user_id, presence: true
  validates :paid, :inclusion => {:in => [true, false]}
  belongs_to :user
  belongs_to :event
  validates :user, :uniqueness => {:scope => :event}
  has_many :costs, :through => :event
  
  def total_days
		(end_date - start_date).to_i
	end
end

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
