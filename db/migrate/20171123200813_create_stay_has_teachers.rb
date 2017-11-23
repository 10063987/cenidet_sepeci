class CreateStayHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :stay_has_teachers do |t|
      t.string :status
      t.references :stay, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
