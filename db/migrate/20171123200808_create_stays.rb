class CreateStays < ActiveRecord::Migration[5.1]
  def change
    create_table :stays do |t|
      t.string :institution_name
      t.string :location
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :host_teacher
      t.string :stay_type
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
