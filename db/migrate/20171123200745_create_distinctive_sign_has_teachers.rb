class CreateDistinctiveSignHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :distinctive_sign_has_teachers do |t|
      t.string :status
      t.references :distinctive_sign, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
