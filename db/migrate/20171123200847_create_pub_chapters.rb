class CreatePubChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :pub_chapters do |t|
      t.string :isbn
      t.string :chapter_title
      t.string :publisher
      t.integer :edition_number
      t.integer :chapter_number
      t.integer :start_page
      t.integer :end_page
      t.string :evidence
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
