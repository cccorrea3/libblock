class CreateBlocks < ActiveRecord::Migration[7.2]
  def change
    create_table :blocks do |t|
      t.string :title, null: false
      t.text :description
      t.string :roles, array: true, default: []
      t.string :pre_conditions, array: true, default: []
      t.string :post_conditions, array: true, default: []
      t.string :main_flow, array: true, default: []
      t.string :alternative_flow, array: true, default: []
      t.string :functional_requests, array: true, default: []
      t.string :non_functional_requests, array: true, default: []
      t.string :priority
      t.string :status
      t.text :notes
      t.string :associated_stations, array: true, default: []
      t.references :environment, foreign_key: true

      t.timestamps
    end
  end
end