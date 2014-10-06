
class Event < ActiveRecord::Base
  # after_save :check_valid_dates
  has_many :roles
  has_many :users, through: :roles
  has_many :expenses, through: :roles
  validates :name, :start_date, :end_date, presence: true


	def total_days
		(end_date - start_date).to_i
	end

	def people_days
		sum = 0
		roles.each { |role| sum += role.total_days}
		sum
	end

	def attendance
		attendance = []
		total_days.times {attendance.push([])}
		roles.each do |role|
			count = 0
			while count < total_days
				if role.start_date == (start_date + count) && role.end_date >= (start_date + count)
					attendance[count].push(role)
					count += 1
					role.start_date += 1
				else
					count += 1
				end
			end
		end
		attendance
	end

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
