class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :usuarios, :role, foreign_key: true
  end
end
