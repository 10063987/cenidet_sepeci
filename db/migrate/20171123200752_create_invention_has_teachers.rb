class CreateInventionHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :invention_has_teachers do |t|
      t.string :status
      t.references :invention, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
