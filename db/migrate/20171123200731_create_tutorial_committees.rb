class CreateTutorialCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :tutorial_committees do |t|
      t.string :name
      t.timestamp :period
      t.references :teacher_type, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
