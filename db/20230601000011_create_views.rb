class CreateViews < ActiveRecord::Migration[7.2]
  def change
    create_table :views do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end