class CreateGenerationHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :generation_has_teachers do |t|
      t.string :status
      t.references :generation, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
