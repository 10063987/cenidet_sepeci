class CreateCongressMemoryHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :congress_memory_has_students do |t|
      t.string :status
      t.references :congress_memory, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
