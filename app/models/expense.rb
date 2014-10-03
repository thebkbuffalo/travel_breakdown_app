
class Expense < ActiveRecord::Base
  validates :item, :amount, :calculation_type, presence: true
  validates :event_id, :user_id, presence: true
  validates :approved, :inclusion => {:in => [true, false]}
  belongs_to :user
	def expense_event
		Event.find_by(id: event_id)
	end
	def total_days
		(end_date - start_date).to_i
	end
	def expense_role
    Role.where(user_id: user_id, event_id: expense_event.id)[0]
  end
  def groceries
  	count = 0
  	sum = 0
  	while count < expense_event.total_days
  		if expense_event.start_date  + count == start_date && end_date >= expense_event.start_date + count
  			sum += expense_event.attendance[count].count
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
		while count < expense_event.total_days
			if expense_event.start_date + count == start_date && end_date >= expense_event.start_date + count
				sum += per_day/expense_event.attendance[count].count if expense_event.start_date + count >= expense_role.start_date && expense_event.start_date + count <= expense_role.end_date
				self.start_date += 1
				count += 1
			else 
				count += 1
			end
		end
		sum
	end
	def gift
		amount.to_f / expense_event.event_users.count
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
