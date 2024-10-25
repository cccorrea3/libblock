class DropEnvironments < ActiveRecord::Migration[7.2]
  def change
	drop_table :environments
  end
end
