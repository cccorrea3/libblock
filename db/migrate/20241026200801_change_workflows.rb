class ChangeWorkflows < ActiveRecord::Migration[7.2]
  def change
    change_table :workflows do |t|



 

    end
    add_index :workflows, :name, unique: true
  end
end