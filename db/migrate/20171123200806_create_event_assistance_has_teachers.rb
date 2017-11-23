class CreateEventAssistanceHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_assistance_has_teachers do |t|
      t.string :status
      t.references :event_assistance, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
