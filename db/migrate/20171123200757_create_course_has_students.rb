class CreateCourseHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :course_has_students do |t|
      t.string :status
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
