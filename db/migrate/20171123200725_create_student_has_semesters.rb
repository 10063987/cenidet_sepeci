class CreateStudentHasSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :student_has_semesters do |t|
      t.string :concluido
      t.references :student, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
