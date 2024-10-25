class AddTypeGroupToGroups < ActiveRecord::Migration[7.2]
  def change
    add_column :groups, :type_group, :string
  end
end