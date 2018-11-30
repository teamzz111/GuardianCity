class AddDireccionToDenuncia < ActiveRecord::Migration[5.2]
  def change
    add_column :denuncia, :direccion, :string
  end
end
