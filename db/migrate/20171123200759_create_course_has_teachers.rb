class CreateCourseHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :course_has_teachers do |t|
      t.string :status
      t.references :course, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
