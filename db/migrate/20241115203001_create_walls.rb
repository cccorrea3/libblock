class CreateWalls < ActiveRecord::Migration[7.2]
  def change
    create_table :walls do |t|
      t.string :name, null: false
      t.text :description
      t.string :visibility
      t.string :walltype

      t.timestamps
    end

    create_join_table :walls, :blocks do |t|
      t.index [:wall_id, :block_id]
      t.index [:block_id, :wall_id]
    end
  end
end