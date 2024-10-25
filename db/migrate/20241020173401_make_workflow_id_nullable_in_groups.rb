class MakeWorkflowIdNullableInGroups < ActiveRecord::Migration[7.2]
  def change
    change_column_null :groups, :workflow_id, true
  end
end