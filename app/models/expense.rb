
class Expense < ActiveRecord::Base
  validates :item, :amount, :calculation_type, presence: true
  validates :event_id, :user_id, presence: true
  validates :approved, :inclusion => {:in => [true, false]}
  belongs_to :user

    def flatperday
	end
end

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
