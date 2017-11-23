class CreateSwDevTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :sw_dev_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
