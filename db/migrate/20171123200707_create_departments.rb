class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :department_manager
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
