class CreateSwDevs < ActiveRecord::Migration[5.1]
  def change
    create_table :sw_devs do |t|
      t.string :sw_dev_title
      t.string :copyright
      t.string :beneficiary
      t.string :objctive
      t.string :evidence
      t.references :sw_dev_type, foreign_key: true
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end
