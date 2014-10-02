class Expense < ActiveRecord::Base
  validates :item, :amount, :calculation_type, presence: true
  validates :event_id, :user_id, presence: true
  validates :approved, :inclusion => {:in => [true, false]}
  belongs_to :user
end
