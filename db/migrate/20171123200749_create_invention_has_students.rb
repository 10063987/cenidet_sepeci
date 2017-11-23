class CreateInventionHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :invention_has_students do |t|
      t.string :status
      t.references :invention, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
