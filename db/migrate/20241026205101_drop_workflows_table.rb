class DropWorkflowsTable < ActiveRecord::Migration[7.2]
  def up
    # Remove the foreign key constraint from groups table
    remove_foreign_key :groups, :workflows, if_exists: true

    # Remove the column from groups table that references workflows
    remove_column :groups, :workflow_id, if_exists: true

    # Now we can safely drop the workflows table
    drop_table :workflows, if_exists: true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end