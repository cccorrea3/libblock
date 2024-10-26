class ChangeWorkflows < ActiveRecord::Migration[7.2]
  def change
    change_table :workflows do |t|
      t.string :description
      t.string :status

    end
  end
end