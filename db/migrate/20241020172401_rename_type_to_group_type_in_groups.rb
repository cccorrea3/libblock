class RenameTypeToGroupTypeInGroups < ActiveRecord::Migration[7.2]
  def change
    rename_column :groups, :type, :group_type
  end
end