class CreateSwDevHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :sw_dev_has_students do |t|
      t.string :status
      t.references :sw_dev, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
