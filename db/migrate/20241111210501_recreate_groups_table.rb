class RecreateGroupsTable < ActiveRecord::Migration[7.2]
  def change
    drop_table :groups, if_exists: true

    create_table :groups do |t|
      t.string :name, null: false
      t.string :group_type
      t.text :description
      t.string :type_group

      t.timestamps
    end
  end
end