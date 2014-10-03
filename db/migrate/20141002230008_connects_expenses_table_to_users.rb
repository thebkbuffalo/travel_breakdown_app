class ConnectsExpensesTableToUsers < ActiveRecord::Migration
  def change
    add_column :expenses, :user_id, :integer, references: :users
  end
end
