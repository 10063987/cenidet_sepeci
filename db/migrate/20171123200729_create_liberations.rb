class CreateLiberations < ActiveRecord::Migration[5.1]
  def change
    create_table :liberations do |t|
      t.string :photo
      t.string :cvu
      t.string :encuesta
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
