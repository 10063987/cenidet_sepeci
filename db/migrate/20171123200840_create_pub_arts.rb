class CreatePubArts < ActiveRecord::Migration[5.1]
  def change
    create_table :pub_arts do |t|
      t.string :issn_printed
      t.string :issn_electronic
      t.string :magazine_name
      t.string :article_title
      t.string :grade
      t.timestamp :publication_date
      t.string :index
      t.integer :magazine_number
      t.integer :magazine_volume
      t.date :year
      t.integer :start_page
      t.integer :end_page
      t.references :pub_art_type, foreign_key: true
      t.string :evidence
      t.string :acceptance_letter
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
