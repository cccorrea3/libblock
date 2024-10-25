class CreateViews < ActiveRecord::Migration[7.2]
  def change
    create_table :views do |t|
      t.string :name, null: false
      t.text :description
      t.string :view_type
      t.boolean :is_active, default: true
      t.integer :sort_order
      t.timestamps
    end
  end
end