class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :mlast_name
      t.string :phone
      t.string :email
      t.string :grade
      t.timestamp :admission_date
      t.timestamp :exit_date
      t.references :research_line, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
