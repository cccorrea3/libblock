class CreateGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.references :workflow, null: false, foreign_key: true

      t.timestamps
    end
  end
end