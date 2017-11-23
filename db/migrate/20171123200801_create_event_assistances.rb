class CreateEventAssistances < ActiveRecord::Migration[5.1]
  def change
    create_table :event_assistances do |t|
      t.string :name
      t.string :event_location
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :course_type
      t.string :participation_type
      t.string :event_type
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
