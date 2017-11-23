class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :institution_name
      t.string :course_location
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :course_type
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
