class RemoveColumnsInExpenseTable < ActiveRecord::Migration
  def change
  	remove_column :expenses, :user_id
  	remove_column :expenses, :event_id
    add_column 	:expenses, :role_id, :integer, references: :users
  end
end
