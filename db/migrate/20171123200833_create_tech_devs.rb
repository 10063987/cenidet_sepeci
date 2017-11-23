class CreateTechDevs < ActiveRecord::Migration[5.1]
  def change
    create_table :tech_devs do |t|
      t.string :dev_name
      t.string :support_document
      t.string :objective
      t.string :summary
      t.string :evidence
      t.string :tech_dev_type
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
