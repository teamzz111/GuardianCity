class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :role

      t.timestamps
    end
    add_index :roles, :role, unique: true
  end
end
