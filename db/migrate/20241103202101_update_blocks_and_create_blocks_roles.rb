class UpdateBlocksAndCreateBlocksRoles < ActiveRecord::Migration[7.2]
  def change
    # Remove the roles column from blocks
    remove_column :blocks, :roles, :string, array: true, default: []

    # Create a join table for blocks and roles
    create_table :blocks_roles, id: false do |t|
      t.belongs_to :block
      t.belongs_to :role
    end
  end
end