class CreatePubChapterHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :pub_chapter_has_teachers do |t|
      t.string :status
      t.references :pub_chapter, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
