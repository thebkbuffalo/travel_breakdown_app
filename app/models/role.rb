class Role < ActiveRecord::Base
  validates :permission, :event_id, :user_id, presence: true
  has_one :user
  has_one :event
  has_many :costs, :through => :event
end
