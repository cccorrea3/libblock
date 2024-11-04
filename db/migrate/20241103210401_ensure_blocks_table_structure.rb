class EnsureBlocksTableStructure < ActiveRecord::Migration[7.2]
  def change
    change_table :blocks do |t|
      t.string :title unless column_exists?(:blocks, :title)
      t.text :description unless column_exists?(:blocks, :description)
      t.string :priority unless column_exists?(:blocks, :priority)
      t.string :status unless column_exists?(:blocks, :status)
      t.text :pre_conditions unless column_exists?(:blocks, :pre_conditions)
      t.text :post_conditions unless column_exists?(:blocks, :post_conditions)
      t.text :main_flow unless column_exists?(:blocks, :main_flow)
      t.text :alternative_flow unless column_exists?(:blocks, :alternative_flow)
      t.text :functional_requests unless column_exists?(:blocks, :functional_requests)
      t.text :non_functional_requests unless column_exists?(:blocks, :non_functional_requests)
      t.text :notes unless column_exists?(:blocks, :notes)
      t.text :associated_stations unless column_exists?(:blocks, :associated_stations)
    end

    create_table :blocks_roles, id: false do |t|
      t.belongs_to :block
      t.belongs_to :role
    end unless table_exists?(:blocks_roles)
  end
end