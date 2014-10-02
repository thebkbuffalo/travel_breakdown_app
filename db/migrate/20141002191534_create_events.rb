class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :users_title
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
