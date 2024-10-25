class CreateGroupsWorkflows < ActiveRecord::Migration[7.2]
  def change
    create_table :groups_workflows, id: false do |t|
      t.belongs_to :group
      t.belongs_to :workflow
    end

    add_index :groups_workflows, [:group_id, :workflow_id], unique: true
  end
end