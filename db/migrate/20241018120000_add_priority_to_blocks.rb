class AddPriorityToBlocks < ActiveRecord::Migration[7.2]
  def change
    add_column :blocks, :priority, :string
  end
end