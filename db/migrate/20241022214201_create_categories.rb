class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :description
      t.integer :parent_id
      t.boolean :is_active, default: true
      t.integer :sort_order
      t.timestamps
    end
    add_index :categories, :name, unique: true
    add_index :categories, :parent_id
  end
end