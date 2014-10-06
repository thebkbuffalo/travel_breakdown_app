class AddEventIdToInvitations < ActiveRecord::Migration
  def change
    add_column  :invitations, :event_id, :integer, references: :event
  end
end
