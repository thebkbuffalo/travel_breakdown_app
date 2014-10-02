class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  has_many :roles
  has_many :expenses
end
