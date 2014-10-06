class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :name
      t.string :email
      t.string :message
      t.boolean :accepted, default: false
    end
  end
end
