class RecreateUsersTableAndAddGroupsAssociation < ActiveRecord::Migration[7.2]
  def change
    # Drop the existing users table if it exists
    drop_table :users, if_exists: true

    # Create the new users table
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.bigint :role_id

      t.timestamps
    end

    # Add indexes
    add_index :users, :email, unique: true
    add_index :users, :role_id

    # Create the join table for users and groups if it doesn't exist
    unless table_exists?(:groups_users)
      create_join_table :users, :groups do |t|
        t.index [:user_id, :group_id]
        t.index [:group_id, :user_id]
      end
    end
  end
end