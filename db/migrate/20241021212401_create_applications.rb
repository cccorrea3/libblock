class CreateApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :applications do |t|
      t.string :name, null: false
      t.text :description
      t.string :status
      t.string :app_type
      t.string :version
      t.datetime :last_deployed_at
      t.timestamps
    end
  end
end