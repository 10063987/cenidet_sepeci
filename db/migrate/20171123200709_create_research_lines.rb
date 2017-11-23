class CreateResearchLines < ActiveRecord::Migration[5.1]
  def change
    create_table :research_lines do |t|
      t.string :name
      t.string :line_coordinator
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
