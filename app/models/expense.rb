class Expense < ActiveRecord::Base
  validates :item, :amount, :calculation_type, presence: true
  validates :event_id, presence: true
  validates :approved, :inclusion => {:in => [true, false]}
  has_one :role, :through => :event
end
