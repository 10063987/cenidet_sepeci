class CreateDistinctiveSignHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :distinctive_sign_has_students do |t|
      t.string :status
      t.references :distinctive_sign, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
