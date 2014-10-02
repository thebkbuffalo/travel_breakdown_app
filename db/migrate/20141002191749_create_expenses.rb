class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :item
      t.decimal :amount
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :calculation_type
      t.string :tag
      t.boolean :approved
      t.references :event
      t.timestamps
    end
  end
end
