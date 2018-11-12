class AddPasswordToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :Password_digest, :string
  end
end
