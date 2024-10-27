class CreateWorkflows < ActiveRecord::Migration[7.2]
  def change
    create_table :workflows do |t|
      t.string :name, null: false
      t.text :description
      t.string :workflowtype

      t.timestamps
    end
  end
end