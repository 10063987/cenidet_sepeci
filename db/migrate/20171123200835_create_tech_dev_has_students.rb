class CreateTechDevHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :tech_dev_has_students do |t|
      t.string :status
      t.references :tech_dev, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
