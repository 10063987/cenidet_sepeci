class CreateRegistries < ActiveRecord::Migration[5.1]
  def change
    create_table :registries do |t|
      t.integer :registration_number
      t.integer :issue_number
      t.references :teacher, foreign_key: true
      t.string :city
      t.timestamp :date
      t.string :reason
      t.string :gas
      t.string :toll_booth
      t.string :travel_expenses
      t.string :land_passage
      t.string :air_ticket
      t.string :exit_transportation
      t.string :return_transportation
      t.string :requisition_number

      t.timestamps
    end
  end
end
