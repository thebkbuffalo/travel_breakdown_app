
class Event < ActiveRecord::Base
  # after_save :check_valid_dates
  has_many :roles
  has_many :users, through: :roles
  has_many :expenses, through: :roles
  validates :name, :start_date, :end_date, presence: true

	def get_total_cost(role)
		@total_cost = 0
		@type = self.expenses.map do |expense|
      if expense.calculation_type.downcase == "groceries"
        @total_cost += expense.groceries_per_person_per_day * overlap_dates(expense, role)
      elsif expense.calculation_type.downcase == "boat"
        @total_cost += boat(expense, role)
      elsif expense.calculation_type.downcase == "gifts"
        @total_cost += expense.gift
      end
  	end
  	@total_cost
	end

	# def total_days
	# 	(end_date - start_date).to_i
	# end

  def boat(expense, role)
    sum = 0
    overlap_dates_array(expense, role).each do |date|
      person_count = 0
      self.roles.each do |role|
        role_dates = (role.start_date..role.end_date).to_a
        person_count += 1 if role_dates.include? date
      end
      sum += expense.cost_per_day/person_count
    end
  sum
  end

  def overlap_dates_array(expense, role)
    role_range = (role.start_date..role.end_date).to_a
    expense_range = expense.get_expense_date_array
    intersection = role_range & expense_range
  end

  def overlap_dates(expense, role)
    role_range = (role.start_date..role.end_date).to_a
    expense_range = expense.get_expense_date_array
    intersection = role_range & expense_range
    intersection.count
  end

	# def attendance
	# 	attendance = []
	# 	total_days.times {attendance.push([])}
	# 	roles.each do |role|
	# 		count = 0
	# 		while count < total_days
	# 			if role.start_date == (start_date + count) && role.end_date >= (start_date + count)
	# 				attendance[count].push(role)
	# 				count += 1
	# 				role.start_date += 1
	# 			else
	# 				count += 1
	# 			end
	# 		end
	# 	end
	# 	attendance
	# end

	 # private

  #   def event_dates
  #     (event.start_date..event.end_date).to_a
  #   end

  #   def correct_date_order?
  #     start_date <= end_date
  #   end

  #   def valid_date_range?
  #     event_dates.include?(start_date) && event_dates.include?(end_date)
  #   end

  #   def check_valid_dates
  #     if !correct_date_order? || !valid_date_range?
  #       state = "dirt"
  #     else
  #       state = "golden"
  #     end
  #   end

end

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
