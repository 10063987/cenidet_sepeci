class CreateSetAsideClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :set_aside_classrooms do |t|
      t.references :classroom, foreign_key: true
      t.references :tutorial_committee, foreign_key: true
      t.references :student, foreign_key: true
      t.references :teacher_type, foreign_key: true
      t.timestamp :period
      t.timestamp :date
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
