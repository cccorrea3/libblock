class CreateMetroLines < ActiveRecord::Migration[7.2]
  def change
    create_table :metro_lines do |t|
      t.string :name, null: false
      t.string :color, null: false

      t.timestamps
    end
  end
end