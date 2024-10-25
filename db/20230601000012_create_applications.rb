class CreateApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :applications do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end