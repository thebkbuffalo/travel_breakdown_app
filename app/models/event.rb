
class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  has_many :roles
  has_many :expenses



	def perpersonperday(total)
		total / days 
	end

	def days
		end_date - begin_date
	end

	def evensplit(total)
		cost/@event.users.count
	end

	def personperday
	end
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
