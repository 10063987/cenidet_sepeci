class CreateTeacherTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
