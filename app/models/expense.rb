class Expense < ActiveRecord::Base
  validates :item, :amount, :calculation_type, presence: true
  validates :approved, :event_id, presence: true
  has_one :role, :through => :event
end
