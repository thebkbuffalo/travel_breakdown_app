class AddAcceptedPermissionToRole < ActiveRecord::Migration
  def change
    add_column :roles, :accepted, :boolean, :default => false
  end
end
