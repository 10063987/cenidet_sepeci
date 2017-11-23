class CreateSwDevHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :sw_dev_has_teachers do |t|
      t.string :status
      t.references :sw_dev, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
