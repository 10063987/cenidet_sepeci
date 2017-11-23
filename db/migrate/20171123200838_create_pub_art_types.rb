class CreatePubArtTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :pub_art_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
