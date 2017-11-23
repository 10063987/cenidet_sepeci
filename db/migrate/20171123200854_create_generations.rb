class CreateGenerations < ActiveRecord::Migration[5.1]
  def change
    create_table :generations do |t|
      t.date :start_year
      t.date :end_year
      t.string :start_period
      t.string :end_period

      t.timestamps
    end
  end
end
