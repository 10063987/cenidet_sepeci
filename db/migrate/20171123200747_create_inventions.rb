class CreateInventions < ActiveRecord::Migration[5.1]
  def change
    create_table :inventions do |t|
      t.string :legal_concept
      t.integer :file_number
      t.timestamp :presentation_date
      t.string :invetion_title
      t.string :inventor
      t.integer :registration_number
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
