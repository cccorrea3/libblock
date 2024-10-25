class ChangeRoles < ActiveRecord::Migration[7.2]
  def change
    change_table :roles do |t|
      
      t.string :description
      t.boolean :is_active, default: true
      t.integer :permission_level

    end

  end
end