class DeleteBlocksTableAndRelatedFields < ActiveRecord::Migration[7.2]
  def up
    # Remove foreign keys if they exist
    remove_foreign_key :blocks_roles, :blocks if foreign_key_exists?(:blocks_roles, :blocks)
    remove_foreign_key :blocks_roles, :roles if foreign_key_exists?(:blocks_roles, :roles)

    # Drop the join table if it exists
    drop_table :blocks_roles if table_exists?(:blocks_roles)

    # Drop the main blocks table
    drop_table :blocks if table_exists?(:blocks)

    # Remove any columns in other tables that reference blocks
    # For example, if you have a 'block_id' in another table:
    # remove_column :other_table, :block_id if column_exists?(:other_table, :block_id)
  end

  def down
    # Re-create the blocks table
    create_table :blocks do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :status
      t.text :pre_conditions
      t.text :post_conditions
      t.text :main_flow
      t.text :alternative_flow
      t.text :functional_requests
      t.text :non_functional_requests
      t.text :notes
      t.text :associated_stations

      t.timestamps
    end

    # Re-create the join table
    create_table :blocks_roles, id: false do |t|
      t.belongs_to :block
      t.belongs_to :role
    end

    # Add back any foreign keys
    add_foreign_key :blocks_roles, :blocks
    add_foreign_key :blocks_roles, :roles

    # Add back any columns in other tables that reference blocks
    # For example:
    # add_column :other_table, :block_id, :integer
    # add_index :other_table, :block_id
  end
end