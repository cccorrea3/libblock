class CreateBlocks < ActiveRecord::Migration[7.2]
  def change
    create_table :blocks do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :status
      t.text :pre_conditions
      t.text :post_conditions
      t.text :main_flow
      t.text :alternative_flow
      t.text :functional_requests
      t.text :non_functional_requests
      t.text :notes

      t.timestamps
    end
  end
end