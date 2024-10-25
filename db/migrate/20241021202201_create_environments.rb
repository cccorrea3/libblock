class CreateEnvironments < ActiveRecord::Migration[7.2]
  def change
    create_table :environments do |t|
      t.string :name, null: false
      t.string :description
      t.string :status
      t.string :type
      t.timestamps
    end
  end
end