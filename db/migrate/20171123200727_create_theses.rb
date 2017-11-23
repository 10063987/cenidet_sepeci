class CreateTheses < ActiveRecord::Migration[5.1]
  def change
    create_table :theses do |t|
      t.string :title
      t.timestamp :admission_date
      t.timestamp :exit_date
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
