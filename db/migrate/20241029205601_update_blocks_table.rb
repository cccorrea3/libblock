class UpdateBlocksTable < ActiveRecord::Migration[7.2]
  def change
    add_column :blocks, :title, :string, if_not_exists: true
    add_column :blocks, :description, :text, if_not_exists: true
    add_column :blocks, :roles, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :pre_conditions, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :post_conditions, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :main_flow, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :alternative_flow, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :functional_requests, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :non_functional_requests, :string, array: true, default: [], if_not_exists: true
    add_column :blocks, :priority, :string, if_not_exists: true
    add_column :blocks, :status, :string, if_not_exists: true
    add_column :blocks, :notes, :text, if_not_exists: true
    add_column :blocks, :associated_stations, :string, array: true, default: [], if_not_exists: true

    add_reference :blocks, :environment, foreign_key: true, if_not_exists: true

    add_index :blocks, :priority, if_not_exists: true
    add_index :blocks, :status, if_not_exists: true
    add_index :blocks, :associated_stations, using: 'gin', if_not_exists: true
  end
end