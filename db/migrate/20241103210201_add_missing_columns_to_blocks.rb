class AddMissingColumnsToBlocks < ActiveRecord::Migration[7.2]
  def change
    #add_column :blocks, :pre_conditions, :text
    #add_column :blocks, :post_conditions, :text
    #add_column :blocks, :main_flow, :text
    #add_column :blocks, :alternative_flow, :text
    #add_column :blocks, :functional_requests, :text
    #add_column :blocks, :non_functional_requests, :text
    #add_column :blocks, :notes, :text
    #add_column :blocks, :associated_stations, :text

    # In case the roles association doesn't exist
    create_table :blocks_roles, id: false do |t|
      t.belongs_to :block
      t.belongs_to :role
    end unless table_exists?(:blocks_roles)
  end
end