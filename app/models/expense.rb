
class Expense < ActiveRecord::Base
  # belongs_to :user thru  :event
  belongs_to :role
  has_one :user, through: :role
  has_one :event, through: :role
  validates :item, :amount, :calculation_type, presence: true
  validates :role_id, presence: true
  validates :approved, :inclusion => {:in => [true, false]}
	def total_days
		(end_date - start_date).to_i
	end
  def groceries
  	count = 0
  	sum = 0
  	while count < event.total_days
  		if event.start_date  + count == start_date && end_date >= event.start_date + count
  			sum += event.attendance[count].count
  			self.start_date += 1
  			count += 1
  		else
  			count += 1
  		end
  	 end 
  	 amount.to_f/sum * (expense_role.total_days)
	end
	def boat
		per_day = amount.to_f/total_days
		count = 0
		sum = 0
		while count < event.total_days
			if event.start_date + count == start_date && end_date >= event.start_date + count
				sum += per_day/event.attendance[count].count if event.start_date + count >= role.start_date && event.start_date + count <= role.end_date
				start_date += 1
				count += 1
			else 
				count += 1
			end
		end
		sum
	end
	def gift
		amount.to_f / event.users.count
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
