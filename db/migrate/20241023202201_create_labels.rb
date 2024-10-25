class CreateLabels < ActiveRecord::Migration[7.2]
  def change
    create_table :labels do |t|
      t.string :name, null: false
      t.string :color
      t.text :description
      t.boolean :is_active, default: true
      t.timestamps
    end
    add_index :labels, :name, unique: true
  end
end