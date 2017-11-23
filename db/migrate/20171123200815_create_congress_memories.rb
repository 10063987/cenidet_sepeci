class CreateCongressMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :congress_memories do |t|
      t.string :memory_title
      t.integer :start_page
      t.integer :end_page
      t.date :year
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
