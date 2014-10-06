
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

	  def groceries_per_person_per_day
	  	(amount.to_f / people_days)
	end

	def people_days
		@expense_dates = get_expense_date_array
		sum = 0
		self.event.roles.each do |role|
			role_dates = (role.start_date..role.end_date).to_a
			intersection = @expense_dates & role_dates
			sum += intersection.count
		end
		sum
	end

	def get_expense_date_array
		(self.start_date..self.end_date).to_a
	end

	def cost_per_day
		self.amount.to_f / self.get_expense_date_array.count
	end

	# def boat


		# @attendance = event.attendance
		# per_day = amount.to_f/total_days
		# count = 0
		# start_date_count = 0
		# @sum = 0
		# while count < event.total_days
		# 	if event.start_date + count == start_date + start_date_count && end_date >= event.start_date + count
		# 			@sum += per_day/@attendance[count].count if event.start_date + count >= role.start_date && event.start_date + count <= role.end_date
		# 			start_date_count += 1
		# 			count += 1
		# 	else
		# 		count += 1
		# 	end
		# end
		# @sum
	# end

	def gift
		amount.to_f/event.users.count
	end

	def calculate_owed
			if calculation_type.downcase == "groceries"
        groceries
      elsif calculation_type.downcase == "boat"
        boat
      elsif calculation_type.downcase == "gift"
        gift
      end
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
