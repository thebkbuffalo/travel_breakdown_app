class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :amount_owed
      t.string :permission
      t.boolean :paid
      t.references :event
      t.references :user

      t.timestamps
    end
  end
end
