class Role < ActiveRecord::Base
  validates :permission, :event_id, :user_id, presence: true
  validates :paid, :inclusion => {:in => [true, false]}
  belongs_to :user
  belongs_to :event
  has_many :costs, :through => :event
end
