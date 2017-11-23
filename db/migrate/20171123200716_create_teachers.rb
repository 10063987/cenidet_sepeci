class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :rfc
      t.string :phone
      t.string :email
      t.string :grade
      t.references :research_line, foreign_key: true
      t.references :origin, foreign_key: true
      t.references :teacher_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
