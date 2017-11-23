class CreateTechDevTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :tech_dev_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
