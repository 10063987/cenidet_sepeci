class CreatePubArtHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :pub_art_has_teachers do |t|
      t.string :status
      t.references :pub_art, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
