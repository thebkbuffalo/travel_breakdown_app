class UpdateBooleansWithDefaults < ActiveRecord::Migration
  def change
    change_column :users, :admin, :boolean, :default => false
    change_column :roles, :paid, :boolean, :default => false
    change_column :expenses, :approved, :boolean, :default => false
  end
end
